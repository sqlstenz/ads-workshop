# Lab 1: Restore Azure SQL DB

## Task 1: Create Blob Storage Account

#### 1.	Navigate to https://portal.azure.com in a web browser if you aren't already there

#### 2.	Search for "blob" in the marketplace - Select "Storage account - blob, file, table, queue" and click "Create"

![](/screenshots/Lab2_ImportAzureSQLDB/RestoreSQLDB01_Search.png)

#### 3. Enter configuration details for Azure blob storage account

   **1. Name:** *unique name*
  
   **2. Deployment model:** Resource Manager
  
   **3. Account kind:** Blob storage
  
   **4. Performance:** Standard
  
   **5. Replication:** Locally-redundant storage (LRS)

   **6. Access tier:** Hot
  
   **7. Secure transfer required:** Disabled
  
   **8. Subscription:** *Your subscription name*
  
   **9. Resource group:** rg_adsworkshop
  
   **10. Location:** South Central US
  
   **11. Virtual Networks:** Disabled
 	
## Task 2: Upload .bacpac file to blob storage

#### 1.	Navigate to the storage account that was just provisioned

![](/screenshots/Lab2_ImportAzureSQLDB/RestoreSQLDB03_NavigateRG.png)
![](/screenshots/Lab2_ImportAzureSQLDB/RestoreSQLDB04_NavigateBlob2.png)
   
#### 2.	Create Container - you can name this anything - backupcontainer is fine.

   ![](/screenshots/Lab2_ImportAzureSQLDB/RestoreSQLDB06_CreateContainer.png)
   
#### 3.	Select the container and upload AdventureworksDW .bacpac file - Navigate to the files you downloaded from GitHub

   ![](/screenshots/Lab2_ImportAzureSQLDB/RestoreSQLDB07_UploadBackPac.png)
   ![](/screenshots/Lab2_ImportAzureSQLDB/RestoreSQLDB08_UploadBackPac2.png)

## Task 3: Upload Bike Collision csv file to Blob Storage - Navigate to the files you downloaded from GitHub

   ![](/screenshots/Lab2_ImportAzureSQLDB/RestoreSQLDB09_UploadBikeCollisioncsv.png)

## Task 4: Create Azure SQL DB Server

#### 1.	Search the Marketplace for Sql Server and select SQL server(logical server) and then click "Create"

   ![](/screenshots/Lab2_ImportAzureSQLDB/RestoreSQLDB10_CreateSQLServer.png)

#### 2.	Enter properties for SQL Server

   **1. Server Name:** *unique name*
  
   **2. Server admin login:** sqladmin
  
   **3. Password:** P@ssw0rd01
  
   **4. Confirm Password:** Standard
  
   **5. Subscription:** *Your subscription name*

   **6. Resource Group:** rg_adsworkshop

   **7. Location:** South Central US

   ![](/screenshots/Lab2_ImportAzureSQLDB/RestoreSQLDB11_SQLServerProperties.png)

## Task 5: Import .bacpac to Azure SQL DB

#### 1.	Navigate to the newly created SQL Server

   ![](/screenshots/Lab2_ImportAzureSQLDB/RestoreSQLDB12_NavigatetoSQLServer.png)

#### 2.	Select "Import Database"

   ![](/screenshots/Lab2_ImportAzureSQLDB/RestoreSQLDB13_SelectImportDB.png)

#### 3. Enter the properties for the import and click "OK"

   **1. Subscription:** *Your subscription name*
  
   **2. Storage (Premium not supported):** *Select the bacpac from the storage account*

   ![](/screenshots/Lab2_ImportAzureSQLDB/RestoreSQLDB15_SelectStorageAcctContainer.png)
   ![](/screenshots/Lab2_ImportAzureSQLDB/RestoreSQLDB16_SelectBacPac.png)
  
   **3. Pricing Tier** Standard S2: 50 DTU, 250GB
  
   **4. Database Name:** AdventureWorksDW
  
   **5. Collation:** *Your subscription name*

   **6. Authentication Type:** SQL Server

   **7. Server admin login:** sqladmin

   **8. Password:** P@ssw0rd01

   ![](/screenshots/Lab2_ImportAzureSQLDB/RestoreSQLDB14_ImportDBProperties.png)

## Task 6: Query Azure SQL DB

#### 1.	Navigate to to newly imported DB

   ![](/screenshots/Lab2_ImportAzureSQLDB/RestoreSQLDB17_FinishedDBImport.png)

#### 2.	Select "Query Editor" on the left side of the screen

	![](/screenshots/Lab2_ImportAzureSQLDB/RestoreSQLDB18_QueryEditor.png)

#### 3.	Connect to the DB using the Query Editor

   **1. Authorization type:** SQL server authentication

   **2. Login:** sqladmin

   **3. Password:** P@ssw0rd01

	![](/screenshots/Lab2_ImportAzureSQLDB/RestoreSQLDB19_ConnectQueryEditor.png)

#### 4.	Run query in Query Editor

	![](/screenshots/Lab2_ImportAzureSQLDB/RestoreSQLDB20_SelectDataQueryEditor.png)


