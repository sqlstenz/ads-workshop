
## Need to change the subscription name if you have multiple subscriptions
$subscriptionName = "Test"
$randNum = Get-Random -Maximum 100
$resourceGroup = "rg_adswkshp"
$adfResourceGroup = "rg_adswkshpadf"
$adlGroupName = "rg_adl"
$NCazureRegion = "North Central US"
$SCazureRegion = "South Central US"

$adfName = "adswkshpadf" + $randNum


$saResourceGroup = "rg_datastorage"
$storageAccountName = "sasdswkshpdatastorage" + $randNum
$containerName = "sc-adswkshp"
$fileToUpload = "C:\ADSWorkshop\Data\bicycle_collision_data.csv"


#import-module AzureRM
import-module Azure
import-module AzureRM

# Login, get and select subscription
Write-Host "Login, get and select subscription"
#Login-toAzure
Login-AzureRmAccount
#Get-AzureRmSubscription
Set-AzureRmContext -SubscriptionName $subscriptionName

Function CreateBlobStorage()
{
# Create new data stroage account Resource Group
Write-Host "Create new data storage Resource Group"
New-AzureRmResourceGroup -Name $saResourceGroup -Location $NCazureRegion
# Create blob storage account/container
Write-Host "Create new Storage Account for data:"
New-AzureRmStorageAccount -ResourceGroupName $saResourceGroup `
                          –StorageAccountName $storageAccountName `
                          -Location $NCazureRegion `
                          -Type Standard_LRS `
                          -Kind BlobStorage `
                          -AccessTier Hot
Set-AzureRmCurrentStorageAccount -ResourceGroupName $saResourceGroup  -Name $storageAccountName
New-AzureStorageContainer -Name $containerName -Permission Off
# Upload bicycle_colliion_data.csv to blob storage
Write-Host "Create Blob Storage container for data"
Set-AzureStorageBlobContent -Container $containerName -File $fileToUpload

}


Function CreateAzureDataLake()
{
    $resourceGroupName = "rg_adl"
    $dataLakeStoreName = "azuredatalakestore" + $randNum
    $dataLakeAnalyticsName = "azuredatalakeanalytics" + $randNum
    $location = "East US 2"

    Write-Host "Create a resource group ..."
    New-AzureRmResourceGroup `
         -Name  $resourceGroupName `
         -Location $location

    Write-Host "Create a Data Lake account ..."
    New-AzureRmDataLakeStoreAccount `
         -ResourceGroupName $resourceGroupName `
         -Name $dataLakeStoreName `
         -Location $location

    Write-Host "Create a Data Lake Analytics account ..."
    New-AzureRmDataLakeAnalyticsAccount `
         -Name $dataLakeAnalyticsName `
         -ResourceGroupName $resourceGroupName `
         -Location $location `
         -DefaultDataLake $dataLakeStoreName

    Write-Host "The newly created Data Lake Analytics account ..."
    Get-AzureRmDataLakeAnalyticsAccount `
         -ResourceGroupName $resourceGroupName `
         -Name $dataLakeAnalyticsName

    Write-Host "Create folder structure in ADLS ..."
    New-AzureRmDataLakeStoreItem -Folder -AccountName $dataLakeStoreName -Path /Raw/AWSQLDB
    New-AzureRmDataLakeStoreItem -Folder -AccountName $dataLakeStoreName -Path /Transformed
}

Function CreateADF()
{
    New-AzureRmResourceGroup -Name $adfResourceGroup  -Location "East US"
    Register-AzureRmResourceProvider -ProviderNamespace Microsoft.DataFactory
    New-AzureRmDataFactory -ResourceGroupName $adfResourceGroup -Name $adfName –Location "East US"
    Get-AzureRmResourceProvider

}

CreateBlobStorage
CreateADF
CreateAzureDataLake
