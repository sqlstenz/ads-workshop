# Lab 2: Copy data from Azure SQL DB and Blob Storage into Azure Data Lake using Azure Data Factory
## Task 1: Create ADF account
#### 1.	Search the Marketplace for "Azure Data Factory" and select "Create"

   ![](/screenshots/Lab3_ADF_ADF/CreateADF01_SearchADF.png)

#### 2.	Enter Azure Data Factory Properties and click "OK"

   **1. Name:** adsworkshop
  
   **2. Subscription:** *Your subscription name*
  
   **3. Resource Group:** rg_adsworkshop
  
   **4. Version:** V2 (Preview)
  
   **5. Location:** East US 2

   ![](/screenshots/Lab3_ADF_ADF/CreateADF02_ADFProperties.png)

## Task 2: Assign permissions in ADLS to ADF Service ID

#### 1.	Navigate to Azure Data Factory in the Azure portal

   ![](/screenshots/Lab3_ADF_ADF/CreateADF03_Navigate.png)

#### 2. In the Properties blade copy the "Service Identity Application ID"

   ![](/screenshots/Lab3_ADF/SecurityADF01_GetSIAID.png)

#### 3. Navigate to ADLS Account in the Azure Portal

   ![](/screenshots/Lab3_ADF/SecurityADF02_NavigateADLS.png)

#### 4. Navigate to Data Explorer in ADLS Account

   ![](/screenshots/Lab3_ADF/ADF35_DataExplorer.png)

#### 5. Click the "Access" Button at the top of the page and then click "Add"

   ![](/screenshots/Lab3_ADF/SecurityADF04_Access.png)

#### 6. Paste the value of the "Service Identity Application ID" into the serch box and select the name of the Azure Data Factory.  Click the "Select" button

   ![](/screenshots/Lab3_ADF/SecurityADF05_AccessSelectUser.png)

#### 7. Select the following options for permissions.  Click the "OK" button.

   ![](/screenshots/Lab3_ADF/SecurityADF06_AccessSelectPermissions.png)

#### 8. There should be a "Success" message like the one in this image when permissions have been assigned
   
   ![](/screenshots/Lab3_ADF/SecurityADF07_SuccessAccessPermission.png)

#### 9. Scroll to the left until you see the data lake store blade and select "Access control (IAM)

   ![](/screenshots/Lab3_ADF/SecurityADF08_NavigateIAM.png)

#### 10. Select "Add"

   ![](/screenshots/Lab3_ADF/SecurityADF09_AddUser.png)

#### 11. Select "Reader" role and add the ADF security ID in the "Select" box and select the ADF name.  Click "Save"

   ![](/screenshots/Lab3_ADF/SecurityADF10_SelectRoleandUser.png)

## Task 3: Copy data from Blob Storage to Azure Data Lake
#### 1.	Navigate to Azure Data Factory in the Azure portal
   
   ![](/screenshots/Lab3_ADF/CreateADF03_NavigateToADF.png)
   ![](/screenshots/Lab3_ADF/CreateADF03_NavigateToADF2.png)
   ![](/screenshots/Lab3_ADF/CreateADF04_AuthorMonitor.png)
   
#### 2.	Create a Copy data pipeline
 
  ![](/screenshots/Lab3_ADF/ADF02_CreateCopyPipeline.png)

#### 3.	Enter Properties for copying data from blob storage to Azure Data Lake Store

  1. **Task Name:** Copy-AzureBlob2ADLS

  2. **Task Description:** Copy CSV file from Azure Blob Storage to Azure Data Lake Storage

  3. **Task Cadence or Task Schedule:** Run once now
  
  ![](/screenshots/Lab3_ADF/ADF03_CopyPipelineProperties.png)
  
#### 4.	Add an Azure Blob Storage account as a source

![](/screenshots/Lab3_ADF/ADF04_CopyPipelineSelectSource.png)

#### 5.	Configure Blob Storage account connection settings and click Next

  1. **Connection Name:** ADSWorkshop_BlobStorageConnection

  2. **Network Environment:** Public Network in Azure Environment

  3. **Account Subscription Method:** From Azure subscriptions

  4. **Azure Subscription:** Use the same as you have been for the labs

  5. **Storage Account Name:** *Name of Blob account made in lab 2*
 
   ![](/screenshots/Lab3_ADF/ADF05_CopyPipelineSelectSA.png)
 
#### 6.	Select CSV file from Blob Storage

![](/screenshots/Lab3_ADF/ADF06_CopyPipelineSelectSACsv.png)
![](/screenshots/Lab3_ADF/ADF07_CopyPipelineSelectSACsv2.png)

#### 7.	Configure properties of CSV file for import and click Next

  1. **File format:** Text format

  2. **Column delimiter:** Comma (,)

  3. **Row delimiter:** Carriage Return + Line Feed (\r\n)

  4. **Make sure both checkboxes under the Skip line count option are checked**

  5. **Quote Character:** "

  6. **Null value:** 
  
   ![](/screenshots/Lab3_ADF/ADF08_02CopyPipelineFileFormat.png)
   
#### 8. Change data types for ReportNo and SeverityCode to be String

   ![](/screenshots/Lab3_ADF/ADF08_03CopyPipelineFileFormatEditDataTypes.png)
   ![](/screenshots/Lab3_ADF/ADF08_04CopyPipelineFileFormatReportNo.png)
   ![](/screenshots/Lab3_ADF/ADF08_05CopyPipelineFileFormatSeverityCode.png)
   ![](/screenshots/Lab3_ADF/ADF08_06CopyPipelineFileFormatSave.png)
   
#### 9. Add an Azure Data Lake Storage account as a destination

![](/screenshots/Lab3_ADF/ADF09_CopyPipelineSelectDestination.png)
 
#### 10.	Configure Azure Data Lake Storage account settings and click Next

  1. **Connection Name:** ADSWorkshop_AzureDataLakeStoreConnection

  2. **Network Environment:** Public Network in Azure Environment

  3. **Account Subscription Method:** From Azure subscriptions

  4. **Azure Subscription:** Use the same as you have been for the labs

  5. **Storage Account Name:** azuredatalakestore

  6. **Authentication Type:** Managed Service Identity (msi)
  
![](/screenshots/Lab3_ADF/ADF10_CopyPipelineDestinationConnection.png)
 
#### 11. Select output file and folder in Azure Data Lake Store

![](/screenshots/Lab3_ADF/ADF11_CopyPipelineDestinationSelectFile.png)
 
#### 12. Configure file format settings and click Next

  1. **File Format:** Text format

  2. **Column Delimiter:** Comma (,)

  3. **Row Delimiter:** Carriage Return + Line Feed (\r\n)

  4. Check Add header to file box

  5. In Advanced Settings add the quote character as "

  6. Change the Null Escape to be blank
  
![](/screenshots/Lab3_ADF/ADF12_CopyPipelineDestinationFileFormat.png)
  
#### 13. Accept defaults for performance and click Next

![](/screenshots/Lab3_ADF/ADF13_CopyPipelinePerfSettings.png)
 
#### 14. Click "Next" on the Summary Page to deploy and run your pipeline

![](/screenshots/Lab3_ADF/ADF14_CopyPipelineSummary.png)

#### 15. Once your pipeline has been deployed, click the link to view it

![](/screenshots/Lab3_ADF/ADF16_CopyPipelineComplete.png)
 
## Task 4: Copy data from SQL Server DB to Azure Data Lake Store

#### 1.	Create another copy pipeline

![](/screenshots/Lab3_ADF/ADF17_MainMenu.png)
![](/screenshots/Lab3_ADF/ADF02_CreateCopyPipeline.png)

#### 2.	Configure Pipeline Properties

  1. **Task Name:** Copy-AzureSQLDB2ADLS

  2. **Task description:** Copy data from Azure SQL DB to Azure Data Lake Storage

  3. **Task cadence or Task schedule:** Run once now
  
![](/screenshots/Lab3_ADF/ADF19_CopyPipelineProps2.png)
 
#### 3.	Select Azure SQL DB as a source and click Next

![](/screenshots/Lab3_ADF/ADF20_CopyPipelineSelectSourceSQLDB.png)
 
#### 4.	Configure Azure SQL DB connection properties and click Next.

  1. **Connection Name:** ADSWorkshop_AzureSQLDBConnection

  2. **Network Environment:** Public Network in Azure Environment

  3. **Server/database selection method:** From Azure subscription

  4. **Azure subscription:** Use the same as you have been for the labs

  5. **Server Name:** asdworkshopsqlserver<randomNumber>

  6. **Database Name:** AdventureworksDW

  7. **User Name:** sqladmin

  8. **Password:** P@ssw0rd01
   
![](/screenshots/Lab3_ADF/ADF21_CopyPipelineSQLDBConnection.png)
 
#### 5.	Select tables to copy and click Next
1.	**Select the following tables:**
  *	[dbo].[DimCustomer]
  *	[dbo].[DimDate]
  *	[dbo].[DimGeography]
  *	[dbo].[DimProduct]
  *	[dbo].[DimProductCategory]
  *	[dbo].[DimProductSubcategory]
  *	[dbo].[FactInternetSales]
  
  ![](/screenshots/Lab3_ADF/ADF22_CopyPipelineSQLDBSelectTables.png)

#### 6.	Select the previously created connection to Azure Data Lake Store and click Next.

 ![](/screenshots/Lab3_ADF/ADF24_CopyPipelineSelectDestinationADLS.png)

#### 7. Accept the connection properties by clicking Next

 ![](/screenshots/Lab3_ADF/ADF25_CopyPipelineAcceptConnection.png)

#### 8.	Select the location of /Raw/AWSQLDB as the folder to put the files

 ![](/screenshots/Lab3_ADF/ADF26_CopyPipelineChooseADLSFile.png)

#### 9.	Enter the properties below and click "Next"
  1. **File Format:** Text format

  2. **Column Delimiter:** Pipe (|)

  3. **Row Delimiter:** Carriage Return + Line Feed (\r\n)

  4. Check Add header to file box

  5. In Advanced Settings add the quote character as "

  6. Change the Null Escape to be blank

 ![](/screenshots/Lab3_ADF/ADF27_CopyPipelineADLSFileFormat.png)

#### 10.	Accept the defaults for performance and click Next.

 ![](/screenshots/Lab3_ADF/ADF28_CopyPipelinePerfSettings2.png)

#### 11.	Click Next on the Summary page.

 ![](/screenshots/Lab3_ADF/ADF29_CopyPipelineSummary2.png)

#### 12.	Click on the link to edit the pipeline deployment.

 ![](/screenshots/Lab3_ADF/ADF30_CopyPipelineComplete.png)

## Task 5: Change File names in ADLS to friendlier name

#### 1.	Navigate to the Data Explorer in the ADLS account in the Azure portal

 ![](/screenshots/Lab3_ADF/ADF34_NavigateToADLS.png)
 ![](/screenshots/Lab3_ADF/ADF35_DataExplorer.png)

#### 2.	Navigate to the \Raw\AWSQLDB folder and 

 ![](/screenshots/Lab3_ADF/ADF36_ViewDataExplorer.png)

#### 3.	Rename each of the 7 files imported by removing the "dbo." on each name

  1. Click the ellipsis for the file and select "Rename File"
 ![](/screenshots/Lab3_ADF/ADF37_RenameFile.png)
  2. Delete the "dbo." from the file name and click "OK"
 ![](/screenshots/Lab3_ADF/ADF38_RenameDialog.png)

#### 4.	Repeat step 3 for each of the 7 files imported
 

