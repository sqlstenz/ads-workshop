# Lab 5: Visualize data from Azure Analysis Services in Power BI
## Task 1: Import data from Azure Analysis Services
#### 1. Open Power BI Desktop
#### 2. Close any opening windows that pop up during start up
#### 3. Click “Get Data” in the ribbon, select Azure --> Azure Analysis Services database and click “Connect”

![](/screenshots/Lab6_woDL/PBI01_GetData.png)
 
 #### 4. Click “Connect” on the Preview Connector informational screen

![](/screenshots/Lab6_woDL/PBI01_GetDataPreview2.png)

#### 5.	Enter the information for the server the Azure Analysis Services database is residing on and click “OK”
      1. **Server:** asazure://northcentralus.asazure.windows.net/aas

![](/screenshots/Lab6_woDL/PBI02_AASConnection.png)
 
#### 6.	Sign in with your Azure credentials and click “Connect”
  
  ![](/screenshots/Lab6_woDL/PBI03_SQLAASConnection2.png)

#### 7. Select the data Model and click "OK"

  ![](/screenshots/Lab6_woDL/PBI04_SelectTable.png)
 

## Task 2: Create Report from data that looks like the following
#### 1.	Add an image
  1. Select the logo from the "images" directory of the ZIP file from GitHub
  
  ![](/screenshots/Lab6_woDL/PBI05_AddReportImage.png)
 
#### 2.	Add a slicer
  1. The slicer will be on the field EnglishProductCategoryName in the DimProductCategory table
  2. Change it from a List type to a Dropdown
  3. Filter by Accessories
  
  ![](/screenshots/Lab6_woDL/PBI06_AddSlicer.png)
 
#### 3.	Add a table
  1. Add the following fields to a table in the report
     Table: DimGeography -> StateProvinceName
     Table: DimProduct -> EnglishProductName
     Table: FactInternetSales -> UnitPrice, UnitPriceDiscountPct
  
  ![](/screenshots/Lab6_woDL/PBI07_AddTable.png)
 
  2. Switch to the “Format” pane and add a table style
  
  ![](/screenshots/Lab6_woDL/PBI08_AddTableStyle.png)
 
#### 4.	Add bar graph
  1. Select the field shown below for the bar graph
  
  ![](/screenshots/Lab6_woDL/PBI09_AddBarGraph.png)
 
#### 5.	Add a line graph
  1. Choose the following fields for the line graph
  
  ![](/screenshots/Lab6_woDL/PBI10_AddLineGraph.png)
 
  2. Select the “Analytics” pane and add forecasting.  Ignore the last data point since it contains incomplete data and click “Apply”
  
  ![](/screenshots/Lab6_woDL/PBI11_AddLineFroecast.png)
 
#### 6.	Add a scatter chart
  1. Add the following fields
  
  ![](/screenshots/Lab6_woDL/PBI12_AddScatterChart.png)
 
#### 7.	The final product should look like this:

![](/screenshots/Lab6_woDL/PBI13_FinalReport.png)
 
## Task 3: Upload Report to Power BI Service
#### 1.	Click on the “Publish” button in the ribbon

![](/screenshots/Lab6_woDL/PBI14_PublishReport.png)
 
#### 2.	Login to the Power BI Service if needed

#### 3.	Choose a workspace to upload data

![](/screenshots/Lab6_woDL/PBI15_ChooseWorkspace.png)
 
#### 4.	You successfully uploaded your report to the Power BI Service!  Click on the “Open<filename> in Power BI” to navigate to the service.

![](/screenshots/Lab6_woDL/PBI16_PublishComplete.png)
 
## Task 4: Create Dashboard in Power BI Service

#### 1.	Navigate to the report in the workspace you uploaded in the previous task by clicking on the link in the pop-up(step 5 of the task 4)

#### 2.	Pin the image to a dashboard

![](/screenshots/Lab6_woDL/PBI17_PinReportPart.png)

![](/screenshots/Lab6_woDL/PBI18_CreateNewDashboard.png)

#### 3. Pin all of the report parts except the table to the dashboard

#### 4. After you pin the last report part, click on the link to take you to the dashboard
  
  ![](/screenshots/Lab6_woDL/PBI19_GoToNewDashboard.png)
 
#### 5.	Arrange the report parts on the dashboard so it looks like the following

  ![](/screenshots/Lab6_woDL/PBI20_FinalDashboard.png)

## Task 5: Enable Q&A

#### 1. Select Settings from the "Gear" menu in the Power BI Service
 
  ![](/screenshots/Lab6_woDL/PBI21_DatasetSettings.png)

#### 2. Select your Dataset from the "Datasets" tab and check "Turn on Q&A for this dataset" and click "Apply"

  ![](/screenshots/Lab6_woDL/PBI22_EnableQ&A.png)

#### 3. Navigate to your dashboard and enter the question in the Q&A box
 
  ![](/screenshots/Lab6_woDL/PBI23_Q&AExample.png)
