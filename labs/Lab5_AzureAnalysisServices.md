# Lab 1: Working with Azure Analysis Services

## Task 1: Create Azure Analysis Services Instance

#### 1.	Navigate to https://portal.azure.com in a web browser

#### 2.	Search for "Analysis Services" in the marketplace and click "Create"

![](/screenshots/Lab5_AzureAnalysisServices/AAS01_Search.png)

#### 3. Enter configuration details for Azure Analysis Services 

   **1. Server Name:** *unique name*
  
   **2. Subscription:** *Your subscription name*
  
   **3. Resource group:** rg_aas
  
   **4. Location:** North Central US
  
   **5. Pricing Tier:** S1 (100 Query Processing Units)

   **6. Administrator:** *You Login Username*
  
   **7. Backup Storage Settings:** Backup Storage: Not Configured
  
   **8. Storage Key Expiration:** Never 
 	
## Task 2: Create Model

#### 1.	Open up Visual Studio on the Data Science VM that was provisioned in the first lab(if it is not already open) and create a new Analysis Services Project

   **1. Name:** AdventureWorksDW
  
   **2. Location:** *Default Location*
  
   **3. Solution Name:** AdventureWorksDW

![](/screenshots/Lab5_AzureAnalysisServices/AAS04_CreateTabularProject.png)
   
#### 2.	Use Integrated Workspace for Model Designer

   ![](/screenshots/Lab5_AzureAnalysisServices/AAS05_ModelDesigner.png)
   
#### 3.	Select "Model" menu at top of window and "Import From Data Source" from the menu

   ![](/screenshots/Lab5_AzureAnalysisServices/AAS06_ImportDataSource.png)

#### 4.	Select "Microsoft SQL Azure"

   ![](/screenshots/Lab5_AzureAnalysisServices/AAS07_ConnectToDataSource.png)

#### 5.	Enter connection information for Azure SQL DB we created earlier

   **1. Server Name:** adsworkshopsqlserver.database.windows.net
  
   **2. User name:** sqladmin
  
   **3. Password:** P@ssw0rd01

   **4. Database:** AdventureWorksDW

   ![](/screenshots/Lab5_AzureAnalysisServices/AAS08_SQLConnectionProperties.png)
   
#### 6.	Select "Service Account" for Impersonation

   ![](/screenshots/Lab5_AzureAnalysisServices/AAS09_ProcessImpersonationInfo.png)

#### 7.	Select "Select tables from list" option

   ![](/screenshots/Lab5_AzureAnalysisServices/AAS10_SelectTablesFromList.png)

#### 8.	Select the following tables:

    DimCustomer
    DimDate
    DimGeography
    DimProduct
    DimProductCategory
    DimProductSubcategory
    FactInternetSales

   ![](/screenshots/Lab5_AzureAnalysisServices/AAS11_SelectTables.png)
   
#### 9.	You should see a successful import

   ![](/screenshots/Lab5_AzureAnalysisServices/AAS12_ImportSuccess.png)

#### 10. Right click on the Tabular project in Visual Studio and select "Properties" from the menu

   ![](/screenshots/Lab5_AzureAnalysisServices/AAS13_ProjectProperties.png)

#### 11. Change the deployment server to the Azure Analysis Services server you created earlier and click "OK"

   **1. Server:** *Address of Azure Analysis Services Server*
  
   **2. Database:** AdventureWorksDW

   ![](/screenshots/Lab5_AzureAnalysisServices/AAS14_ChangeDeploymentServer.png)

#### 12. Right click on the Tabular project in Visual Studio and select "Deploy" from the menu

   ![](/screenshots/Lab5_AzureAnalysisServices/AAS15_DeployModel.png)

#### 13. You should see a successful deployment to the Azure Analysis Services Server

   ![](/screenshots/Lab5_AzureAnalysisServices/AAS16_DeploySuccess.png)
   