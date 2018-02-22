# Lab 5: Visualize data from Azure Analysis Services in Power BI
## Task 1: Import data from Azure Analysis Services
#### 1. Open Power BI Desktop
#### 2. Close any opening windows that pop up during start up
#### 3. Click “Get Data” in the ribbon, select Azure --> Azure Analysis Services database and click “Connect”

![](/screenshots/Lab6/PBI01_GetData.png)
 
 #### 3. Click “Connect” on the Preview Connector informational screen

![](/screenshots/Lab6/PBI01_GetDataPreview2.png)

#### 4.	Enter the information for the server the Azure Analysis Services database is residing on and click “OK”
  1. **Server:** asazure://northcentralus.asazure.windows.net/aas

![](/screenshots/Lab6/PBI02_AASConnection.png)
 
#### 5.	Select "Basic" and Sign in with your Azure credentials and click “Connect”
  
  ![](/screenshots/Lab6/PBI03_SQLAASConnection2.png)
 
#### 6.	Select the CustomerProductSale table and click “Load”

![](/screenshots/Lab6/PBI04_Fields.png)
 
#### 7.	The model shows up in the “Fields” pane on the right.

![](/screenshots/Lab6/PBI04_SelectTable.png)
 
## Task 2: Import bike collision data from Azure Data Lake Store
#### 1.	Select “Get Data” from the ribbon and select Azure Data Lake from the list of sources and click “Connect”.

![](/screenshots/Lab6/PBI05_GetDataADLS.png)
 
#### 2.	Enter the URL to the Azure Data Lake Store.  Note: This can be found in the Azure portal.

![](/screenshots/Lab6/PBI06_ADLSURL.png)
 
#### 3.	You may have to sign in to your account

![](/screenshots/Lab6/PBI07_ADLSSignIn.png)
 
#### 4.	Click “Edit” on the dialog box

![](/screenshots/Lab6/PBI08_ADLSChooseFile.png)
 
#### 5.	You will be taken to the Edit Queries pane where we will select the data in Azure Data Lake and do some transforms.
#### 6.	Click on the “Table” link in the Content column for the “Raw” directory

![](/screenshots/Lab6/PBI09_ADLSExplodeFile.png)
 
#### 7.	Click on the “Binary” link in the Content column for the bicycle_collision_data.csv file

![](/screenshots/Lab6/PBI10_ADLSExplodeFile2.png)
 
#### 8.	You now have the contents of the file displayed

![](/screenshots/Lab6/PBI11_ADLSExplodeFile3.png)
 
#### 9.	Rename the query to BicycleCollisionData

![](/screenshots/Lab6/PBI12_RenameQuery.png)
 
#### 10. Change the type of the reportno column to be Text

![](/screenshots/Lab6/PBI13_ChangeColumnType.png)
 
#### 11. Replace current type change operation

![](/screenshots/Lab6/PBI14_ChangeColumnTypeConfirm.png)
 
## Task 2: Add key column and connect tables in Power BI
#### 1.	Add a column to the data

![](/screenshots/Lab6/PBI15_AddCustomColumn.png)

![](/screenshots/Lab6/PBI16_AddCustomColumn2.png)
 
#### 2.	See that the column has been added to the query

![](/screenshots/Lab6/PBI17_ViewCustomColumn.png)

#### 3.	Switch context to the query CustomerProductSale

![](/screenshots/Lab6/PBI18_SwitchContext.png)
 
#### 4.	Add a custom column with the following statement and click “OK”

```SQL
if Text.Contains([ProductCategoryName], "Bikes") then "Bikes" else "Non-Bike"
```

![](/screenshots/Lab6/PBI19_AddCustomColumn3.png)
 
#### 5.	There should be a custom column added to the end of the dataset

![](/screenshots/Lab6/PBI20_ViewCustomColumn2.png)
 
#### 6.	On the “Home” menu in the ribbon select “Close & Apply”

![](/screenshots/Lab6/PBI21_CloseAndApply.png)
 
#### 7.	Navigate to the “Relationships” pane

![](/screenshots/Lab6/PBI22_RelationshipPane.png)
 
#### 8.	Create a bridge table in the model by selecting “Enter Data”

![](/screenshots/Lab6/PBI23_EnterData.png)
 
#### 9.	Create a new table called “BikeCollision_CustomerProductSale_Bridge with the following data and click “Load”.

![](/screenshots/Lab6/PBI24_CreateData.png)
 
#### 10. Create the following relationships by dragging and dropping the columns on one table to the next in the relationship.

![](/screenshots/Lab6/PBI25_CreateRelationship.png)

![](/screenshots/Lab6/PBI26_CreateRelationship2.png)
 
## Task 3: Create Report from data that looks like the following
#### 1.	Add an image
  1. Select the logo from the "images" directory of the ZIP file from GitHub
  
  ![](/screenshots/Lab6/PBI27_AddReportImage.png)
 
#### 2.	Add a slicer
  1. The slicer will be on the field ProductCategory in the BicycleCollision_CustomerProductSale_Bridge table
  2. Change it from a List type to a Dropdown
  
  ![](/screenshots/Lab6/PBI28_AddReportSlicer.png)
 
#### 3.	Add a table
  1. Add the fields from the CustomerProductSale table as shown
  
  ![](/screenshots/Lab6/PBI29_AddReportTable.png)
 
  2. Switch to the “Format” pane and add a table style
  
  ![](/screenshots/Lab6/PBI30_AddReportTableFormat.png)
 
#### 4.	Add bar graph
  1. Select the field shown below for the bar graph
  
  ![](/screenshots/Lab6/PBI31_AddReportBarGraph.png)
 
#### 5.	Add a line graph
  1. Choose the following fields for the line graph
  
  ![](/screenshots/Lab6/PBI32_AddReportLineGraph.png)
 
  2. Select the “Analytics” pane and add forecasting.  Ignore the last data point since it contains incomplete data and click “Apply”
  
  ![](/screenshots/Lab6/PBI33_AddReportLineGraphForecast.png)
 

#### 6.	Add a scatter chart
  1. Add the following fields
  
  ![](/screenshots/Lab6/PBI34_AddReportScatterChart.png)
 
  2. Select the “Format” pane and select “Fill Points”
  
  ![](/screenshots/Lab6/PBI35_AddReportScatterChartFillPoints.png)
 
#### 7.	The final product should look like this:

![](/screenshots/Lab6/PBI36_FinalReport.png)
 
## Task 4: Upload Report to Power BI Service
#### 1.	Click on the “Publish” button in the ribbon

![](/screenshots/Lab6/PBI37_PublishRibbon.png)
 
#### 2.	Login to the Power BI Service if needed

#### 3.	Choose a workspace to upload data

![](/screenshots/Lab6/PBI38_ChooseWorkspace.png)
 
#### 4.	You successfully uploaded your report to the Power BI Service!  Click on the “Open<filename> in Power BI” to navigate to the service.

![](/screenshots/Lab6/PBI39_PublishComplete.png)
 
## Task 5: Create Dashboard in Power BI Service
#### 1.	Navigate to the report in the workspace you uploaded in the previous task by clicking on the link in the pop-up(step 5 of the task 4)
#### 2.	Pin the image to a dashboard

![](/screenshots/Lab6/PBI40_PinImage.png)

![](/screenshots/Lab6/PBI41_CreateNewDashboard.png)

  1. After you pin the last report part, click on the link to take you to the dashboard
  
  ![](/screenshots/Lab6/PBI42_GoToNewDashboard.png)
 
#### 3.	Arrange the report parts on the dashboard so it looks like the following

![](/screenshots/Lab6/PBI43_ViewNewDashboard.png)
 
#### 4.	If time permits, explore other features of Power BI like Q&A and Quick Insights.
  1. Q&A
  
  ![](/screenshots/Lab6/PBI44_Q&A.png)
 
  2. Quick Insights
  
  ![](/screenshots/Lab6/PBI45_QuickInsights.png)
 
