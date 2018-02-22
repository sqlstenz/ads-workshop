# PreLab 1: Provision Azure Data Science VM

## Task 1: Create Azure Data Science VM

#### 1.	Navigate to https://portal.azure.com in a web browser

#### 2.	Search for Azure Data Science in the marketplace
   ![](/screenshots/Lab1_ProvisionServices/ADS01_Search.png)
   ![](/screenshots/Lab1_ProvisionServices/ADS02_Create.png)

#### 3. Enter configuration details for Azure Data Science VM
   **1. Name:** adswkshpvm
  
   **2. VM Disk Type:** SSD
  
   **3. UserName:** adswkshpadmin
  
   **4. Password:** adswkshpP@ssw0rd!01

   **5. Subscription:** *Your subscription name*
  
   **6. Resource Group:** Create New: rg_adsworkshop
  
   **6. Location:** South Central US
   
   ![](/screenshots/Lab1_ProvisionServices/ADS03_BasicSettings.png)
  
   **7. Size:** Select DS4_V2
  
   **8. Settings:** Accept default settings
  
   **9. Summary:** Click Create
 	
## Task 2: Connect to Azure Data Science VM
#### 1.	Navigate to your dashboard and then the Azure Data Science VM

![](/screenshots/Lab1_ProvisionServices/ADS04_Dashboard1.png)
![](/screenshots/Lab1_ProvisionServices/ADS05_Dashboard2.png)
   
#### 2.	Click Connect

   ![](/screenshots/Lab1_ProvisionServices/ADS06_Connect.png)
   
#### 3.	Open the .rdp file that was downloaded

   ![](/screenshots/Lab1_ProvisionServices/ADS07_ConnectRDP.png)
   
#### 4.	Click “more choices” and choose “Use a different account”.   Enter the admin credentials you supplied under the “Basics” section when provisioning the Azure Data Science VM

   ![](/screenshots/Lab1_ProvisionServices/ADS08_ConnectCredentials.png)
   
#### 5.Accept the security certificate

   ![](/screenshots/Lab1_ProvisionServices/ADS09_AcceptCert.png)
   
## Task 3: Setup Data to be uploaded to Azure 
#### NOTE **THE FOLLOWING LABS WILL BE DONE FROM THE DATA SCIENCE VM**
#### 1.	Download the project from GitHub and unzip it on the Azure Data Science VM: https://github.com/sqlstenz/ads-workshop

   ![](/screenshots/Lab1_ProvisionServices/ADS10_DownloadData.png)

## Task 4: Provision Azure Data Services

#### 1.	Navigate to https://portal.azure.com in a web browser and sign in

## Task 4a: Create ADLS account
#### 1.	Search the Marketplace for "Azure Data Lake Store" and select "Create"

   ![](/screenshots/Lab1_ProvisionServices/CreateADLS01_Search.png)

#### 2.	Enter Azure Data Lake Store Properties and click "Create"

   **1. Name:** azuredatalakestore<assignednumber>
  
   **2. Subscription:** *Your subscription name*
  
   **3. Resource Group:** rg_adsworkshop
  
   **4. Location:** East US 2

   **5. Pricing Package:** Pay-as-You-Go

   **6. Encryption Settings:** Enabled

   ![](/screenshots/Lab1_ProvisionServices/CreateADLS02_Properties.png)

#### 3.	Navigate to ADLS Account

   ![](/screenshots/Lab1_ProvisionServices/CreateADLS03_NavigatetoADLS.png)

#### 4.	Navigate to Data Explorer

   ![](/screenshots/Lab1_ProvisionServices/SecurityADF03_DataExplorer.png)

#### 5. Create Folder Structre in ADLS

   **1. New Folder --> Raw --> OK** 

   **2. New Folder --> Transformed --> OK**

## Task 4b: Create ADLA account
#### 1.	Search the Marketplace for "Azure Data Lake Analytics" and select "Create"

   ![](/screenshots/Lab1_ProvisionServices/CreateADLS01_Search.png)

#### 2.	Enter Azure Data Lake Store Properties

   **1. Name:** azuredatalakeanalytics<assignednumber>
  
   **2. Subscription:** *Your subscription name*
  
   **3. Resource Group:** rg_adsworkshop
  
   **4. Location:** East US 2

   **5. Data Lake Store:** azuredatalakestore<assignednumber>

   **6. Pricing Package:** Pay-as-You-Go

   ![](/screenshots/Lab1_ProvisionServices/CreateADLS02_Properties.png)

#### 3.	Navigate to ADLA Account

   ![](/screenshots/Lab1_ProvisionServices/CreateADLA03_NavigatetoADLS.png)

## Task 5: Install USQL Extensions for Data Lake Analytics

#### 1.	Install USQL Extensions for Data Lake Analytics

   ![](/screenshots/Lab1_ProvisionServices/ADS16_InstallExtensions.png)


