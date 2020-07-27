-- Setting up the training data

-- Select the database
USE AdventureWorks2017


-- Setting up some humanmade metadata about different keys
IF OBJECT_ID('keys_train', 'u') IS NOT NULL 
  DROP TABLE keys_train;

  CREATE TABLE keys_train (
       [TABLE_CATALOG] nvarchar(128)
      ,[TABLE_SCHEMA] nvarchar(128)
      ,[TABLE_NAME] nvarchar(128)
      ,[COLUMN_NAME] nvarchar(128)
	  ,[BUSINESS_KEY] int
	  ,[FOREIGN_KEY] int
	  ,[PRIMARY KEY] int
 ); 


INSERT INTO keys_train VALUES('BikeStores','production','brands','brand_id',1,0,1)
INSERT INTO keys_train VALUES('BikeStores','production','categories','category_id',1,0,1)
INSERT INTO keys_train VALUES('BikeStores','production','products','product_id',1,0,1)
INSERT INTO keys_train VALUES('BikeStores','production','products','brand_id',0,1,0)
INSERT INTO keys_train VALUES('BikeStores','production','products','category_id',0,1,0)
INSERT INTO keys_train VALUES('BikeStores','production','stocks','store_id',0,1,1)
INSERT INTO keys_train VALUES('BikeStores','production','stocks','product_id',0,1,1)
INSERT INTO keys_train VALUES('BikeStores','sales','customers','customer_id',1,0,1)
INSERT INTO keys_train VALUES('BikeStores','sales','order_items','order_id',1,1,1)
INSERT INTO keys_train VALUES('BikeStores','sales','order_items','item_id',1,0,1)
INSERT INTO keys_train VALUES('BikeStores','sales','order_items','product_id',0,1,0)
INSERT INTO keys_train VALUES('BikeStores','sales','orders','order_id',1,0,1)
INSERT INTO keys_train VALUES('BikeStores','sales','orders','customer_id',0,1,0)
INSERT INTO keys_train VALUES('BikeStores','sales','orders','store_id',0,1,0)
INSERT INTO keys_train VALUES('BikeStores','sales','orders','staff_id',0,1,0)
INSERT INTO keys_train VALUES('BikeStores','sales','staffs','staff_id',1,0,1)
INSERT INTO keys_train VALUES('BikeStores','sales','staffs','store_id',0,1,0)
INSERT INTO keys_train VALUES('BikeStores','sales','staffs','manager_id',0,1,0)
INSERT INTO keys_train VALUES('BikeStores','sales','stores','store_id',1,0,1)



INSERT INTO keys_train VALUES('ContosoRetailDW','dbo','DimAccount','AccountLabel',1,0,0)
INSERT INTO keys_train VALUES('ContosoRetailDW','dbo','DimAccount','AccountKey',0,0,1)
INSERT INTO keys_train VALUES('ContosoRetailDW','dbo','DimChannel','ChannelKey',0,0,1)
INSERT INTO keys_train VALUES('ContosoRetailDW','dbo','DimChannel','ChannelLabel',1,0,0)
INSERT INTO keys_train VALUES('ContosoRetailDW','dbo','DimCurrency','CurrencyKey',0,0,1)
INSERT INTO keys_train VALUES('ContosoRetailDW','dbo','DimCurrency','CurrencyLabel',1,0,0)
INSERT INTO keys_train VALUES('ContosoRetailDW','dbo','DimCustomer','CustomerKey',0,0,1)
INSERT INTO keys_train VALUES('ContosoRetailDW','dbo','DimCustomer','CustomerLabel',1,0,0)
INSERT INTO keys_train VALUES('ContosoRetailDW','dbo','DimCustomer','GeographyKey',0,1,0)
INSERT INTO keys_train VALUES('ContosoRetailDW','dbo','DimDate','Datekey',1,0,1)
INSERT INTO keys_train VALUES('ContosoRetailDW','dbo','DimEmployee','EmployeeKey',1,0,1)
INSERT INTO keys_train VALUES('ContosoRetailDW','dbo','DimEmployee','ParentEmployeeKey',0,1,0)
INSERT INTO keys_train VALUES('ContosoRetailDW','dbo','DimEntity','EntityKey',0,0,1)
INSERT INTO keys_train VALUES('ContosoRetailDW','dbo','DimEntity','EntityLabel',1,0,0)
INSERT INTO keys_train VALUES('ContosoRetailDW','dbo','DimGeography','GeographyKey',1,0,1)
INSERT INTO keys_train VALUES('ContosoRetailDW','dbo','DimMachine','MachineKey',0,0,1)
INSERT INTO keys_train VALUES('ContosoRetailDW','dbo','DimMachine','MachineLabel',1,0,0)
INSERT INTO keys_train VALUES('ContosoRetailDW','dbo','DimMachine','StoreKey',0,1,0)
INSERT INTO keys_train VALUES('ContosoRetailDW','dbo','DimOutage','OutageKey',0,0,1)
INSERT INTO keys_train VALUES('ContosoRetailDW','dbo','DimOutage','OutageLabel',1,0,0)
INSERT INTO keys_train VALUES('ContosoRetailDW','dbo','DimProduct','ProductKey',0,0,1)
INSERT INTO keys_train VALUES('ContosoRetailDW','dbo','DimProduct','ProductLabel',1,0,0)
INSERT INTO keys_train VALUES('ContosoRetailDW','dbo','DimProduct','ProductSubcategoryKey',0,1,0)
INSERT INTO keys_train VALUES('ContosoRetailDW','dbo','DimProductCategory','ProductCategoryKey',0,0,1)
INSERT INTO keys_train VALUES('ContosoRetailDW','dbo','DimProductCategory','ProductCategoryLabel',1,0,0)
INSERT INTO keys_train VALUES('ContosoRetailDW','dbo','DimProductSubcategory','ProductSubcategoryKey',0,0,1)
INSERT INTO keys_train VALUES('ContosoRetailDW','dbo','DimProductSubcategory','ProductSubcategoryLabel',1,0,0)
INSERT INTO keys_train VALUES('ContosoRetailDW','dbo','DimProductSubcategory','ProductCategoryKey',0,1,0)
INSERT INTO keys_train VALUES('ContosoRetailDW','dbo','DimPromotion','PromotionKey',0,0,1)
INSERT INTO keys_train VALUES('ContosoRetailDW','dbo','DimPromotion','PromotionLabel',1,0,0)
INSERT INTO keys_train VALUES('ContosoRetailDW','dbo','DimSalesTerritory','SalesTerritoryKey',0,0,1)
INSERT INTO keys_train VALUES('ContosoRetailDW','dbo','DimSalesTerritory','SalesTerritoryLabel',1,0,0)
INSERT INTO keys_train VALUES('ContosoRetailDW','dbo','DimSalesTerritory','GeographyKey',0,1,0)
INSERT INTO keys_train VALUES('ContosoRetailDW','dbo','DimScenario','ScenarioKey',0,0,1)
INSERT INTO keys_train VALUES('ContosoRetailDW','dbo','DimScenario','ScenarioLabel',1,0,0)
INSERT INTO keys_train VALUES('ContosoRetailDW','dbo','DimStore','StoreKey',0,0,1)
INSERT INTO keys_train VALUES('ContosoRetailDW','dbo','DimStore','EntityKey',1,0,0)
INSERT INTO keys_train VALUES('ContosoRetailDW','dbo','DimStore','GeographyKey',0,1,0)
INSERT INTO keys_train VALUES('ContosoRetailDW','dbo','FactExchangeRate','ExchangeRateKey',1,0,1)
INSERT INTO keys_train VALUES('ContosoRetailDW','dbo','FactExchangeRate','CurrencyKey',0,1,0)
INSERT INTO keys_train VALUES('ContosoRetailDW','dbo','FactExchangeRate','DateKey',0,1,0)
INSERT INTO keys_train VALUES('ContosoRetailDW','dbo','FactInventory','InventoryKey',1,0,1)
INSERT INTO keys_train VALUES('ContosoRetailDW','dbo','FactInventory','DateKey',0,1,0)
INSERT INTO keys_train VALUES('ContosoRetailDW','dbo','FactInventory','StoreKey',0,1,0)
INSERT INTO keys_train VALUES('ContosoRetailDW','dbo','FactInventory','ProductKey',0,1,0)
INSERT INTO keys_train VALUES('ContosoRetailDW','dbo','FactInventory','CurrencyKey',0,1,0)
INSERT INTO keys_train VALUES('ContosoRetailDW','dbo','FactITMachine','ITMachinekey',1,0,1)
INSERT INTO keys_train VALUES('ContosoRetailDW','dbo','FactITMachine','MachineKey',0,1,0)
INSERT INTO keys_train VALUES('ContosoRetailDW','dbo','FactITMachine','Datekey',0,1,0)
INSERT INTO keys_train VALUES('ContosoRetailDW','dbo','FactITSLA','ITSLAkey',1,0,1)
INSERT INTO keys_train VALUES('ContosoRetailDW','dbo','FactITSLA','DateKey',0,1,0)
INSERT INTO keys_train VALUES('ContosoRetailDW','dbo','FactITSLA','StoreKey',0,1,0)
INSERT INTO keys_train VALUES('ContosoRetailDW','dbo','FactITSLA','MachineKey',0,1,0)
INSERT INTO keys_train VALUES('ContosoRetailDW','dbo','FactITSLA','OutageKey',0,1,0)
INSERT INTO keys_train VALUES('ContosoRetailDW','dbo','FactOnlineSales','OnlineSalesKey',0,0,1)
INSERT INTO keys_train VALUES('ContosoRetailDW','dbo','FactOnlineSales','SalesOrderNumber',1,0,0)
INSERT INTO keys_train VALUES('ContosoRetailDW','dbo','FactOnlineSales','DateKey',0,1,0)
INSERT INTO keys_train VALUES('ContosoRetailDW','dbo','FactOnlineSales','StoreKey',0,1,0)
INSERT INTO keys_train VALUES('ContosoRetailDW','dbo','FactOnlineSales','ProductKey',0,1,0)
INSERT INTO keys_train VALUES('ContosoRetailDW','dbo','FactOnlineSales','PromotionKey',0,1,0)
INSERT INTO keys_train VALUES('ContosoRetailDW','dbo','FactOnlineSales','CurrencyKey',0,1,0)
INSERT INTO keys_train VALUES('ContosoRetailDW','dbo','FactOnlineSales','CustomerKey',0,1,0)
INSERT INTO keys_train VALUES('ContosoRetailDW','dbo','FactSales','SalesKey',1,0,1)
INSERT INTO keys_train VALUES('ContosoRetailDW','dbo','FactSales','DateKey',0,1,0)
INSERT INTO keys_train VALUES('ContosoRetailDW','dbo','FactSales','channelKey',0,1,0)
INSERT INTO keys_train VALUES('ContosoRetailDW','dbo','FactSales','StoreKey',0,1,0)
INSERT INTO keys_train VALUES('ContosoRetailDW','dbo','FactSales','ProductKey',0,1,0)
INSERT INTO keys_train VALUES('ContosoRetailDW','dbo','FactSales','PromotionKey',0,1,0)
INSERT INTO keys_train VALUES('ContosoRetailDW','dbo','FactSales','CurrencyKey',0,1,0)
INSERT INTO keys_train VALUES('ContosoRetailDW','dbo','FactSalesQuota','SalesQuotaKey',1,0,1)
INSERT INTO keys_train VALUES('ContosoRetailDW','dbo','FactSalesQuota','ChannelKey',0,1,0)
INSERT INTO keys_train VALUES('ContosoRetailDW','dbo','FactSalesQuota','StoreKey',0,1,0)
INSERT INTO keys_train VALUES('ContosoRetailDW','dbo','FactSalesQuota','ProductKey',0,1,0)
INSERT INTO keys_train VALUES('ContosoRetailDW','dbo','FactSalesQuota','DateKey',0,1,0)
INSERT INTO keys_train VALUES('ContosoRetailDW','dbo','FactSalesQuota','CurrencyKey',0,1,0)
INSERT INTO keys_train VALUES('ContosoRetailDW','dbo','FactSalesQuota','ScenarioKey',0,1,0)
INSERT INTO keys_train VALUES('ContosoRetailDW','dbo','FactStrategyPlan','StrategyPlanKey',1,0,1)
INSERT INTO keys_train VALUES('ContosoRetailDW','dbo','FactStrategyPlan','Datekey',0,1,0)
INSERT INTO keys_train VALUES('ContosoRetailDW','dbo','FactStrategyPlan','EntityKey',0,1,0)
INSERT INTO keys_train VALUES('ContosoRetailDW','dbo','FactStrategyPlan','ScenarioKey',0,1,0)
INSERT INTO keys_train VALUES('ContosoRetailDW','dbo','FactStrategyPlan','AccountKey',0,1,0)
INSERT INTO keys_train VALUES('ContosoRetailDW','dbo','FactStrategyPlan','CurrencyKey',0,1,0)
INSERT INTO keys_train VALUES('ContosoRetailDW','dbo','FactStrategyPlan','ProductCategoryKey',0,1,0)



INSERT INTO keys_train VALUES('Dofactory','dbo','Customer','Id',1,0,1)
INSERT INTO keys_train VALUES('Dofactory','dbo','Order','Id',0,0,1)
INSERT INTO keys_train VALUES('Dofactory','dbo','Order','OrderNumber',1,0,0)
INSERT INTO keys_train VALUES('Dofactory','dbo','Order','CustomerId',0,1,0)
INSERT INTO keys_train VALUES('Dofactory','dbo','OrderItem','Id',1,0,1)
INSERT INTO keys_train VALUES('Dofactory','dbo','OrderItem','OrderId',0,1,0)
INSERT INTO keys_train VALUES('Dofactory','dbo','OrderItem','ProductId',0,1,0)
INSERT INTO keys_train VALUES('Dofactory','dbo','Product','Id',1,0,1)
INSERT INTO keys_train VALUES('Dofactory','dbo','Product','SupplierId',0,1,0)
INSERT INTO keys_train VALUES('Dofactory','dbo','Supplier','Id',1,0,1)



INSERT INTO keys_train VALUES('LahmansBaseballDB','dbo','AllstarFull','playerID',1,0,1)
INSERT INTO keys_train VALUES('LahmansBaseballDB','dbo','AllstarFull','yearID',1,0,1)
INSERT INTO keys_train VALUES('LahmansBaseballDB','dbo','AllstarFull','gameNum',1,0,1)
INSERT INTO keys_train VALUES('LahmansBaseballDB','dbo','Appearances','yearID',1,0,1)
INSERT INTO keys_train VALUES('LahmansBaseballDB','dbo','Appearances','teamID',1,0,1)
INSERT INTO keys_train VALUES('LahmansBaseballDB','dbo','Appearances','playerID',1,0,1)
INSERT INTO keys_train VALUES('LahmansBaseballDB','dbo','AwardsManagers','playerID',1,0,1)
INSERT INTO keys_train VALUES('LahmansBaseballDB','dbo','AwardsManagers','awardID',1,0,1)
INSERT INTO keys_train VALUES('LahmansBaseballDB','dbo','AwardsManagers','yearID',1,0,1)
INSERT INTO keys_train VALUES('LahmansBaseballDB','dbo','AwardsManagers','lgID',1,0,1)
INSERT INTO keys_train VALUES('LahmansBaseballDB','dbo','AwardsPlayers','playerID',1,0,1)
INSERT INTO keys_train VALUES('LahmansBaseballDB','dbo','AwardsPlayers','awardID',1,0,1)
INSERT INTO keys_train VALUES('LahmansBaseballDB','dbo','AwardsPlayers','yearID',1,0,1)
INSERT INTO keys_train VALUES('LahmansBaseballDB','dbo','AwardsPlayers','lgID',1,0,1)
INSERT INTO keys_train VALUES('LahmansBaseballDB','dbo','AwardsShareManagers','playerID',1,0,1)
INSERT INTO keys_train VALUES('LahmansBaseballDB','dbo','AwardsShareManagers','awardID',1,0,1)
INSERT INTO keys_train VALUES('LahmansBaseballDB','dbo','AwardsShareManagers','yearID',1,0,1)
INSERT INTO keys_train VALUES('LahmansBaseballDB','dbo','AwardsShareManagers','lgID',1,0,1)
INSERT INTO keys_train VALUES('LahmansBaseballDB','dbo','AwardsSharePlayers','playerID',1,0,1)
INSERT INTO keys_train VALUES('LahmansBaseballDB','dbo','AwardsSharePlayers','awardID',1,0,1)
INSERT INTO keys_train VALUES('LahmansBaseballDB','dbo','AwardsSharePlayers','yearID',1,0,1)
INSERT INTO keys_train VALUES('LahmansBaseballDB','dbo','AwardsSharePlayers','lgID',1,0,1)
INSERT INTO keys_train VALUES('LahmansBaseballDB','dbo','Batting','playerID',1,0,1)
INSERT INTO keys_train VALUES('LahmansBaseballDB','dbo','Batting','yearID',1,0,1)
INSERT INTO keys_train VALUES('LahmansBaseballDB','dbo','Batting','stint',1,0,1)
INSERT INTO keys_train VALUES('LahmansBaseballDB','dbo','BattingPost','yearID',1,0,1)
INSERT INTO keys_train VALUES('LahmansBaseballDB','dbo','BattingPost','round',1,0,1)
INSERT INTO keys_train VALUES('LahmansBaseballDB','dbo','BattingPost','playerID',1,0,1)
INSERT INTO keys_train VALUES('LahmansBaseballDB','dbo','Fielding','playerID',1,0,1)
INSERT INTO keys_train VALUES('LahmansBaseballDB','dbo','Fielding','yearID',1,0,1)
INSERT INTO keys_train VALUES('LahmansBaseballDB','dbo','Fielding','stint',1,0,1)
INSERT INTO keys_train VALUES('LahmansBaseballDB','dbo','Fielding','POS',1,0,1)
INSERT INTO keys_train VALUES('LahmansBaseballDB','dbo','FieldingOF','playerID',1,0,1)
INSERT INTO keys_train VALUES('LahmansBaseballDB','dbo','FieldingOF','yearID',1,0,1)
INSERT INTO keys_train VALUES('LahmansBaseballDB','dbo','FieldingOF','stint',1,0,1)
INSERT INTO keys_train VALUES('LahmansBaseballDB','dbo','FieldingOFsplit','playerID',1,0,1)
INSERT INTO keys_train VALUES('LahmansBaseballDB','dbo','FieldingOFsplit','yearID',1,0,1)
INSERT INTO keys_train VALUES('LahmansBaseballDB','dbo','FieldingOFsplit','stint',1,0,1)
INSERT INTO keys_train VALUES('LahmansBaseballDB','dbo','FieldingOFsplit','POS',1,0,1)
INSERT INTO keys_train VALUES('LahmansBaseballDB','dbo','FieldingPost','playerID',1,0,1)
INSERT INTO keys_train VALUES('LahmansBaseballDB','dbo','FieldingPost','yearID',1,0,1)
INSERT INTO keys_train VALUES('LahmansBaseballDB','dbo','FieldingPost','round',1,0,1)
INSERT INTO keys_train VALUES('LahmansBaseballDB','dbo','FieldingPost','POS',1,0,1)
INSERT INTO keys_train VALUES('LahmansBaseballDB','dbo','HallOfFame','playerID',1,0,1)
INSERT INTO keys_train VALUES('LahmansBaseballDB','dbo','HallOfFame','yearid',1,0,1)
INSERT INTO keys_train VALUES('LahmansBaseballDB','dbo','HallOfFame','votedBy',1,0,1)
INSERT INTO keys_train VALUES('LahmansBaseballDB','dbo','Managers','yearID',1,0,1)
INSERT INTO keys_train VALUES('LahmansBaseballDB','dbo','Managers','teamID',1,0,1)
INSERT INTO keys_train VALUES('LahmansBaseballDB','dbo','Managers','inseason',1,0,1)
INSERT INTO keys_train VALUES('LahmansBaseballDB','dbo','ManagersHalf','playerID',1,0,1)
INSERT INTO keys_train VALUES('LahmansBaseballDB','dbo','ManagersHalf','yearID',1,0,1)
INSERT INTO keys_train VALUES('LahmansBaseballDB','dbo','ManagersHalf','teamID',1,0,1)
INSERT INTO keys_train VALUES('LahmansBaseballDB','dbo','ManagersHalf','half',1,0,1)
INSERT INTO keys_train VALUES('LahmansBaseballDB','dbo','Parks','ID',1,0,1)
INSERT INTO keys_train VALUES('LahmansBaseballDB','dbo','Pitching','playerID',1,0,1)
INSERT INTO keys_train VALUES('LahmansBaseballDB','dbo','Pitching','yearID',1,0,1)
INSERT INTO keys_train VALUES('LahmansBaseballDB','dbo','Pitching','stint',1,0,1)
INSERT INTO keys_train VALUES('LahmansBaseballDB','dbo','PitchingPost','playerID',1,0,1)
INSERT INTO keys_train VALUES('LahmansBaseballDB','dbo','PitchingPost','yearID',1,0,1)
INSERT INTO keys_train VALUES('LahmansBaseballDB','dbo','PitchingPost','round',1,0,1)
INSERT INTO keys_train VALUES('LahmansBaseballDB','dbo','Salaries','yearID',1,0,1)
INSERT INTO keys_train VALUES('LahmansBaseballDB','dbo','Salaries','teamID',1,0,1)
INSERT INTO keys_train VALUES('LahmansBaseballDB','dbo','Salaries','lgID',1,0,1)
INSERT INTO keys_train VALUES('LahmansBaseballDB','dbo','Salaries','playerID',1,0,1)
INSERT INTO keys_train VALUES('LahmansBaseballDB','dbo','Schools','schoolID',1,0,1)
INSERT INTO keys_train VALUES('LahmansBaseballDB','dbo','SeriesPost','yearID',1,0,1)
INSERT INTO keys_train VALUES('LahmansBaseballDB','dbo','SeriesPost','round',1,0,1)
INSERT INTO keys_train VALUES('LahmansBaseballDB','dbo','Teams','yearID',1,0,1)
INSERT INTO keys_train VALUES('LahmansBaseballDB','dbo','Teams','lgID',1,0,1)
INSERT INTO keys_train VALUES('LahmansBaseballDB','dbo','Teams','teamID',1,0,1)
INSERT INTO keys_train VALUES('LahmansBaseballDB','dbo','TeamsFranchises','franchID',1,0,1)
INSERT INTO keys_train VALUES('LahmansBaseballDB','dbo','TeamsHalf','yearID',1,0,1)
INSERT INTO keys_train VALUES('LahmansBaseballDB','dbo','TeamsHalf','lgID',1,0,1)
INSERT INTO keys_train VALUES('LahmansBaseballDB','dbo','TeamsHalf','teamID',1,0,1)
INSERT INTO keys_train VALUES('LahmansBaseballDB','dbo','TeamsHalf','Half',1,0,1)




INSERT INTO keys_train VALUES('Northwind','dbo','Categories','CategoryID',1,0,1)
INSERT INTO keys_train VALUES('Northwind','dbo','CustomerCustomerDemo','CustomerID',0,1,1)
INSERT INTO keys_train VALUES('Northwind','dbo','CustomerCustomerDemo','CustomerTypeID',0,1,1)
INSERT INTO keys_train VALUES('Northwind','dbo','CustomerDemographics','CustomerTypeID',1,0,1)
INSERT INTO keys_train VALUES('Northwind','dbo','Customers','CustomerID',1,0,1)
INSERT INTO keys_train VALUES('Northwind','dbo','Employees','EmployeeID',1,0,1)
INSERT INTO keys_train VALUES('Northwind','dbo','Employees','ReportsTo',0,1,0)
INSERT INTO keys_train VALUES('Northwind','dbo','EmployeeTerritories','EmployeeID',0,1,1)
INSERT INTO keys_train VALUES('Northwind','dbo','EmployeeTerritories','TerritoryID',0,1,1)
INSERT INTO keys_train VALUES('Northwind','dbo','Order Details','OrderID',0,1,1)
INSERT INTO keys_train VALUES('Northwind','dbo','Order Details','ProductID',0,1,1)
INSERT INTO keys_train VALUES('Northwind','dbo','Orders','OrderID',1,0,1)
INSERT INTO keys_train VALUES('Northwind','dbo','Orders','CustomerID',0,1,0)
INSERT INTO keys_train VALUES('Northwind','dbo','Orders','EmployeeID',0,1,0)
INSERT INTO keys_train VALUES('Northwind','dbo','Orders','ShipVia',0,1,0)
INSERT INTO keys_train VALUES('Northwind','dbo','Products','ProductID',1,0,1)
INSERT INTO keys_train VALUES('Northwind','dbo','Products','SupplierID',0,1,0)
INSERT INTO keys_train VALUES('Northwind','dbo','Products','CategoryID',0,1,0)
INSERT INTO keys_train VALUES('Northwind','dbo','Region','RegionID',1,0,1)
INSERT INTO keys_train VALUES('Northwind','dbo','Shippers','ShipperID',1,0,1)
INSERT INTO keys_train VALUES('Northwind','dbo','Suppliers','SupplierID',1,0,1)
INSERT INTO keys_train VALUES('Northwind','dbo','Territories','TerritoryID',1,0,1)
INSERT INTO keys_train VALUES('Northwind','dbo','Territories','RegionID',0,1,0)



INSERT INTO keys_train VALUES('NYCTaxi_Sample','dbo','nyctaxi_sample','medallion',1,0,0)
INSERT INTO keys_train VALUES('NYCTaxi_Sample','dbo','nyctaxi_sample','hack_license',1,0,0)
INSERT INTO keys_train VALUES('NYCTaxi_Sample','dbo','nyctaxi_sample','pickup_datetime',1,0,0)
INSERT INTO keys_train VALUES('NYCTaxi_Sample','dbo','nyctaxi_sample','dropoff_datetime',1,0,0)



INSERT INTO keys_train VALUES('pubs','dbo','authors','au_id',1,0,1)
INSERT INTO keys_train VALUES('pubs','dbo','discounts','stor_id',0,1,0)
INSERT INTO keys_train VALUES('pubs','dbo','discounts','discounttype',1,0,0)
INSERT INTO keys_train VALUES('pubs','dbo','employee','emp_id',1,0,1)
INSERT INTO keys_train VALUES('pubs','dbo','employee','job_id',0,1,0)
INSERT INTO keys_train VALUES('pubs','dbo','employee','pub_id',0,1,0)
INSERT INTO keys_train VALUES('pubs','dbo','jobs','job_id',1,0,1)
INSERT INTO keys_train VALUES('pubs','dbo','pub_info','pub_id',0,1,1)
INSERT INTO keys_train VALUES('pubs','dbo','publishers','pub_id',1,0,1)
INSERT INTO keys_train VALUES('pubs','dbo','roysched','title_id',0,1,0)
INSERT INTO keys_train VALUES('pubs','dbo','sales','stor_id',1,1,1)
INSERT INTO keys_train VALUES('pubs','dbo','sales','ord_num',1,0,1)
INSERT INTO keys_train VALUES('pubs','dbo','sales','title_id',1,1,1)
INSERT INTO keys_train VALUES('pubs','dbo','stores','stor_id',1,0,1)
INSERT INTO keys_train VALUES('pubs','dbo','titleauthor','au_id',0,1,1)
INSERT INTO keys_train VALUES('pubs','dbo','titleauthor','title_id',0,1,1)
INSERT INTO keys_train VALUES('pubs','dbo','titles','title_id',1,0,1)
INSERT INTO keys_train VALUES('pubs','dbo','titles','pub_id',0,1,0)



INSERT INTO keys_train VALUES('salesdb','dbo','Customers','CustomerID',1,0,1)
INSERT INTO keys_train VALUES('salesdb','dbo','Employees','EmployeeID',1,0,1)
INSERT INTO keys_train VALUES('salesdb','dbo','Products','ProductID',1,0,1)
INSERT INTO keys_train VALUES('salesdb','dbo','Sales','SalesID',1,0,1)
INSERT INTO keys_train VALUES('salesdb','dbo','Sales','SalesPersonID',0,1,0)
INSERT INTO keys_train VALUES('salesdb','dbo','Sales','CustomerID',0,1,0)
INSERT INTO keys_train VALUES('salesdb','dbo','Sales','ProductID',0,1,0)



INSERT INTO keys_train VALUES('School','dbo','Course','CourseID',1,0,1)
INSERT INTO keys_train VALUES('School','dbo','Course','DepartmentID',0,1,0)
INSERT INTO keys_train VALUES('School','dbo','CourseInstructor','CourseID',0,1,1)
INSERT INTO keys_train VALUES('School','dbo','CourseInstructor','PersonID',0,1,1)
INSERT INTO keys_train VALUES('School','dbo','Department','DepartmentID',1,0,1)
INSERT INTO keys_train VALUES('School','dbo','OfficeAssignment','InstructorID',0,1,1)
INSERT INTO keys_train VALUES('School','dbo','OnlineCourse','CourseID',0,1,1)
INSERT INTO keys_train VALUES('School','dbo','OnsiteCourse','CourseID',0,1,1)
INSERT INTO keys_train VALUES('School','dbo','Person','PersonID',1,0,1)
INSERT INTO keys_train VALUES('School','dbo','StudentGrade','EnrollmentID',1,0,1)
INSERT INTO keys_train VALUES('School','dbo','StudentGrade','CourseID',0,1,0)
INSERT INTO keys_train VALUES('School','dbo','StudentGrade','StudentID',0,1,0)



INSERT INTO keys_train VALUES('WideWorldImportersDW','Dimension','City','City Key',0,0,1)
INSERT INTO keys_train VALUES('WideWorldImportersDW','Dimension','City','WWI City ID',1,0,0)
INSERT INTO keys_train VALUES('WideWorldImportersDW','Dimension','Customer','Customer Key',0,0,1)
INSERT INTO keys_train VALUES('WideWorldImportersDW','Dimension','Customer','WWI Customer ID',1,0,0)
INSERT INTO keys_train VALUES('WideWorldImportersDW','Dimension','Date','Date',1,0,1)
INSERT INTO keys_train VALUES('WideWorldImportersDW','Dimension','Employee','Employee Key',0,0,1)
INSERT INTO keys_train VALUES('WideWorldImportersDW','Dimension','Employee','WWI Employee ID',1,0,0)
INSERT INTO keys_train VALUES('WideWorldImportersDW','Dimension','Payment Method','Payment Method Key',0,0,1)
INSERT INTO keys_train VALUES('WideWorldImportersDW','Dimension','Payment Method','WWI Payment Method ID',1,0,0)
INSERT INTO keys_train VALUES('WideWorldImportersDW','Dimension','Stock Item','Stock Item Key',0,0,1)
INSERT INTO keys_train VALUES('WideWorldImportersDW','Dimension','Stock Item','WWI Stock Item ID',1,0,0)
INSERT INTO keys_train VALUES('WideWorldImportersDW','Dimension','Supplier','Supplier Key',0,0,1)
INSERT INTO keys_train VALUES('WideWorldImportersDW','Dimension','Supplier','WWI Supplier ID',1,0,0)
INSERT INTO keys_train VALUES('WideWorldImportersDW','Dimension','Transaction Type','Transaction Type Key',0,0,1)
INSERT INTO keys_train VALUES('WideWorldImportersDW','Dimension','Transaction Type','WWI Transaction Type ID',1,0,0)
INSERT INTO keys_train VALUES('WideWorldImportersDW','Fact','Movement','Movement Key',0,0,1)
INSERT INTO keys_train VALUES('WideWorldImportersDW','Fact','Movement','Date Key',0,1,1)
INSERT INTO keys_train VALUES('WideWorldImportersDW','Fact','Movement','Stock Item Key',0,1,0)
INSERT INTO keys_train VALUES('WideWorldImportersDW','Fact','Movement','Customer Key',0,1,0)
INSERT INTO keys_train VALUES('WideWorldImportersDW','Fact','Movement','Supplier Key',0,1,0)
INSERT INTO keys_train VALUES('WideWorldImportersDW','Fact','Movement','Transaction Type Key',0,1,0)
INSERT INTO keys_train VALUES('WideWorldImportersDW','Fact','Movement','WWI Stock Item Transaction ID',1,0,0)
INSERT INTO keys_train VALUES('WideWorldImportersDW','Fact','Order','Order Key',0,0,1)
INSERT INTO keys_train VALUES('WideWorldImportersDW','Fact','Order','City Key',0,1,0)
INSERT INTO keys_train VALUES('WideWorldImportersDW','Fact','Order','Customer Key',0,1,0)
INSERT INTO keys_train VALUES('WideWorldImportersDW','Fact','Order','Stock Item Key',0,1,0)
INSERT INTO keys_train VALUES('WideWorldImportersDW','Fact','Order','Order Date Key',0,1,1)
INSERT INTO keys_train VALUES('WideWorldImportersDW','Fact','Order','Picked Date Key',0,1,0)
INSERT INTO keys_train VALUES('WideWorldImportersDW','Fact','Order','Salesperson Key',0,1,0)
INSERT INTO keys_train VALUES('WideWorldImportersDW','Fact','Order','Picker Key',0,1,0)
INSERT INTO keys_train VALUES('WideWorldImportersDW','Fact','Order','WWI Order ID',1,0,0)
INSERT INTO keys_train VALUES('WideWorldImportersDW','Fact','Purchase','Purchase Key',0,0,1)
INSERT INTO keys_train VALUES('WideWorldImportersDW','Fact','Purchase','Date Key',0,1,1)
INSERT INTO keys_train VALUES('WideWorldImportersDW','Fact','Purchase','Supplier Key',0,1,0)
INSERT INTO keys_train VALUES('WideWorldImportersDW','Fact','Purchase','Stock Item Key',0,1,0)
INSERT INTO keys_train VALUES('WideWorldImportersDW','Fact','Purchase','WWI Purchase Order ID',1,0,0)
INSERT INTO keys_train VALUES('WideWorldImportersDW','Fact','Sale','Sale Key',0,0,1)
INSERT INTO keys_train VALUES('WideWorldImportersDW','Fact','Sale','City Key',0,1,0)
INSERT INTO keys_train VALUES('WideWorldImportersDW','Fact','Sale','Customer Key',0,1,0)
INSERT INTO keys_train VALUES('WideWorldImportersDW','Fact','Sale','Bill To Customer Key',0,1,0)
INSERT INTO keys_train VALUES('WideWorldImportersDW','Fact','Sale','Stock Item Key',0,1,0)
INSERT INTO keys_train VALUES('WideWorldImportersDW','Fact','Sale','Invoice Date Key',0,1,1)
INSERT INTO keys_train VALUES('WideWorldImportersDW','Fact','Sale','Delivery Date Key',0,1,0)
INSERT INTO keys_train VALUES('WideWorldImportersDW','Fact','Sale','Salesperson Key',0,1,0)
INSERT INTO keys_train VALUES('WideWorldImportersDW','Fact','Sale','WWI Invoice ID',1,0,0)
INSERT INTO keys_train VALUES('WideWorldImportersDW','Fact','Stock Holding','Stock Holding Key',1,0,1)
INSERT INTO keys_train VALUES('WideWorldImportersDW','Fact','Stock Holding','Stock Item Key',0,1,0)
INSERT INTO keys_train VALUES('WideWorldImportersDW','Fact','Transaction','Transaction Key',0,0,1)
INSERT INTO keys_train VALUES('WideWorldImportersDW','Fact','Transaction','Date Key',0,1,1)
INSERT INTO keys_train VALUES('WideWorldImportersDW','Fact','Transaction','Customer Key',0,1,0)
INSERT INTO keys_train VALUES('WideWorldImportersDW','Fact','Transaction','Bill To Customer Key',0,1,0)
INSERT INTO keys_train VALUES('WideWorldImportersDW','Fact','Transaction','Supplier Key',0,1,0)
INSERT INTO keys_train VALUES('WideWorldImportersDW','Fact','Transaction','Transaction Type Key',0,1,0)
INSERT INTO keys_train VALUES('WideWorldImportersDW','Fact','Transaction','Payment Method Key',0,1,0)
INSERT INTO keys_train VALUES('WideWorldImportersDW','Fact','Transaction','WWI Customer Transaction ID',1,0,0)

-- -- Setting up some humanmade metadata about descriptive column data
USE AdventureWorks2017


IF OBJECT_ID('column_data_train', 'u') IS NOT NULL 
  DROP TABLE column_data_train;

  CREATE TABLE column_data_train (
       [TABLE_CATALOG] nvarchar(128)
      ,[TABLE_SCHEMA] nvarchar(128)
      ,[TABLE_NAME] nvarchar(128)
      ,[COLUMN_NAME] nvarchar(128)
	  ,[CONTAINS_ID] int
	  ,[CONTAINS_NAME] int
	  ,[CONTAINS_NUMBER] int
	  ,[CONTAINS_NODE] int
	  ,[CONTAINS_KEY] int
	  ,[COLUMN_NAME_LENGTH] int
 ); 

INSERT INTO column_data_train VALUES('BikeStores','production','brands','brand_id',1,0,0,0,0,8)
INSERT INTO column_data_train VALUES('BikeStores','production','brands','brand_name',0,1,0,0,0,10)
INSERT INTO column_data_train VALUES('BikeStores','production','categories','category_id',1,0,0,0,0,11)
INSERT INTO column_data_train VALUES('BikeStores','production','categories','category_name',0,1,0,0,0,13)
INSERT INTO column_data_train VALUES('BikeStores','production','products','brand_id',1,0,0,0,0,8)
INSERT INTO column_data_train VALUES('BikeStores','production','products','category_id',1,0,0,0,0,11)
INSERT INTO column_data_train VALUES('BikeStores','production','products','list_price',0,0,0,0,0,10)
INSERT INTO column_data_train VALUES('BikeStores','production','products','model_year',0,0,0,0,0,10)
INSERT INTO column_data_train VALUES('BikeStores','production','products','product_id',1,0,0,0,0,10)
INSERT INTO column_data_train VALUES('BikeStores','production','products','product_name',0,1,0,0,0,12)
INSERT INTO column_data_train VALUES('BikeStores','production','stocks','product_id',1,0,0,0,0,10)
INSERT INTO column_data_train VALUES('BikeStores','production','stocks','quantity',0,0,0,0,0,8)
INSERT INTO column_data_train VALUES('BikeStores','production','stocks','store_id',1,0,0,0,0,8)
INSERT INTO column_data_train VALUES('BikeStores','sales','customers','city',0,0,0,0,0,4)
INSERT INTO column_data_train VALUES('BikeStores','sales','customers','customer_id',1,0,0,0,0,11)
INSERT INTO column_data_train VALUES('BikeStores','sales','customers','email',0,0,0,0,0,5)
INSERT INTO column_data_train VALUES('BikeStores','sales','customers','first_name',0,1,0,0,0,10)
INSERT INTO column_data_train VALUES('BikeStores','sales','customers','last_name',0,1,0,0,0,9)
INSERT INTO column_data_train VALUES('BikeStores','sales','customers','phone',0,0,0,0,0,5)
INSERT INTO column_data_train VALUES('BikeStores','sales','customers','state',0,0,0,0,0,5)
INSERT INTO column_data_train VALUES('BikeStores','sales','customers','street',0,0,0,0,0,6)
INSERT INTO column_data_train VALUES('BikeStores','sales','customers','zip_code',0,0,0,0,0,8)
INSERT INTO column_data_train VALUES('BikeStores','sales','order_items','discount',0,0,0,0,0,8)
INSERT INTO column_data_train VALUES('BikeStores','sales','order_items','item_id',1,0,0,0,0,7)
INSERT INTO column_data_train VALUES('BikeStores','sales','order_items','list_price',0,0,0,0,0,10)
INSERT INTO column_data_train VALUES('BikeStores','sales','order_items','order_id',1,0,0,0,0,8)
INSERT INTO column_data_train VALUES('BikeStores','sales','order_items','product_id',1,0,0,0,0,10)
INSERT INTO column_data_train VALUES('BikeStores','sales','order_items','quantity',0,0,0,0,0,8)
INSERT INTO column_data_train VALUES('BikeStores','sales','orders','customer_id',1,0,0,0,0,11)
INSERT INTO column_data_train VALUES('BikeStores','sales','orders','order_date',0,0,0,0,0,10)
INSERT INTO column_data_train VALUES('BikeStores','sales','orders','order_id',1,0,0,0,0,8)
INSERT INTO column_data_train VALUES('BikeStores','sales','orders','order_status',0,0,0,0,0,12)
INSERT INTO column_data_train VALUES('BikeStores','sales','orders','required_date',0,0,0,0,0,13)
INSERT INTO column_data_train VALUES('BikeStores','sales','orders','shipped_date',0,0,0,0,0,12)
INSERT INTO column_data_train VALUES('BikeStores','sales','orders','staff_id',1,0,0,0,0,8)
INSERT INTO column_data_train VALUES('BikeStores','sales','orders','store_id',1,0,0,0,0,8)
INSERT INTO column_data_train VALUES('BikeStores','sales','staffs','active',0,0,0,0,0,6)
INSERT INTO column_data_train VALUES('BikeStores','sales','staffs','email',0,0,0,0,0,5)
INSERT INTO column_data_train VALUES('BikeStores','sales','staffs','first_name',0,1,0,0,0,10)
INSERT INTO column_data_train VALUES('BikeStores','sales','staffs','last_name',0,1,0,0,0,9)
INSERT INTO column_data_train VALUES('BikeStores','sales','staffs','manager_id',1,0,0,0,0,10)
INSERT INTO column_data_train VALUES('BikeStores','sales','staffs','phone',0,0,0,0,0,5)
INSERT INTO column_data_train VALUES('BikeStores','sales','staffs','staff_id',1,0,0,0,0,8)
INSERT INTO column_data_train VALUES('BikeStores','sales','staffs','store_id',1,0,0,0,0,8)
INSERT INTO column_data_train VALUES('BikeStores','sales','stores','city',0,0,0,0,0,4)
INSERT INTO column_data_train VALUES('BikeStores','sales','stores','email',0,0,0,0,0,5)
INSERT INTO column_data_train VALUES('BikeStores','sales','stores','phone',0,0,0,0,0,5)
INSERT INTO column_data_train VALUES('BikeStores','sales','stores','state',0,0,0,0,0,5)
INSERT INTO column_data_train VALUES('BikeStores','sales','stores','store_id',1,0,0,0,0,8)
INSERT INTO column_data_train VALUES('BikeStores','sales','stores','store_name',0,1,0,0,0,10)
INSERT INTO column_data_train VALUES('BikeStores','sales','stores','street',0,0,0,0,0,6)
INSERT INTO column_data_train VALUES('BikeStores','sales','stores','zip_code',0,0,0,0,0,8)
INSERT INTO column_data_train VALUES('ContosoRetailDW','dbo','DimAccount','AccountDescription',0,0,0,0,0,18)
INSERT INTO column_data_train VALUES('ContosoRetailDW','dbo','DimAccount','AccountKey',0,0,0,0,1,10)
INSERT INTO column_data_train VALUES('ContosoRetailDW','dbo','DimAccount','AccountLabel',0,0,0,0,0,12)
INSERT INTO column_data_train VALUES('ContosoRetailDW','dbo','DimAccount','AccountName',0,1,0,0,0,11)
INSERT INTO column_data_train VALUES('ContosoRetailDW','dbo','DimAccount','AccountType',0,0,0,0,0,11)
INSERT INTO column_data_train VALUES('ContosoRetailDW','dbo','DimAccount','CustomMemberOptions',0,0,0,0,0,19)
INSERT INTO column_data_train VALUES('ContosoRetailDW','dbo','DimAccount','CustomMembers',0,0,0,0,0,13)
INSERT INTO column_data_train VALUES('ContosoRetailDW','dbo','DimAccount','ETLLoadID',1,0,0,0,0,9)
INSERT INTO column_data_train VALUES('ContosoRetailDW','dbo','DimAccount','LoadDate',0,0,0,0,0,8)
INSERT INTO column_data_train VALUES('ContosoRetailDW','dbo','DimAccount','Operator',0,0,0,0,0,8)
INSERT INTO column_data_train VALUES('ContosoRetailDW','dbo','DimAccount','ParentAccountKey',0,0,0,0,1,16)
INSERT INTO column_data_train VALUES('ContosoRetailDW','dbo','DimAccount','UpdateDate',0,0,0,0,0,10)
INSERT INTO column_data_train VALUES('ContosoRetailDW','dbo','DimAccount','ValueType',0,0,0,0,0,9)
INSERT INTO column_data_train VALUES('ContosoRetailDW','dbo','DimChannel','ChannelDescription',0,0,0,0,0,18)
INSERT INTO column_data_train VALUES('ContosoRetailDW','dbo','DimChannel','ChannelKey',0,0,0,0,1,10)
INSERT INTO column_data_train VALUES('ContosoRetailDW','dbo','DimChannel','ChannelLabel',0,0,0,0,0,12)
INSERT INTO column_data_train VALUES('ContosoRetailDW','dbo','DimChannel','ChannelName',0,1,0,0,0,11)
INSERT INTO column_data_train VALUES('ContosoRetailDW','dbo','DimChannel','ETLLoadID',1,0,0,0,0,9)
INSERT INTO column_data_train VALUES('ContosoRetailDW','dbo','DimChannel','LoadDate',0,0,0,0,0,8)
INSERT INTO column_data_train VALUES('ContosoRetailDW','dbo','DimChannel','UpdateDate',0,0,0,0,0,10)
INSERT INTO column_data_train VALUES('ContosoRetailDW','dbo','DimCurrency','CurrencyDescription',0,0,0,0,0,19)
INSERT INTO column_data_train VALUES('ContosoRetailDW','dbo','DimCurrency','CurrencyKey',0,0,0,0,1,11)
INSERT INTO column_data_train VALUES('ContosoRetailDW','dbo','DimCurrency','CurrencyLabel',0,0,0,0,0,13)
INSERT INTO column_data_train VALUES('ContosoRetailDW','dbo','DimCurrency','CurrencyName',0,1,0,0,0,12)
INSERT INTO column_data_train VALUES('ContosoRetailDW','dbo','DimCurrency','ETLLoadID',1,0,0,0,0,9)
INSERT INTO column_data_train VALUES('ContosoRetailDW','dbo','DimCurrency','LoadDate',0,0,0,0,0,8)
INSERT INTO column_data_train VALUES('ContosoRetailDW','dbo','DimCurrency','UpdateDate',0,0,0,0,0,10)
INSERT INTO column_data_train VALUES('ContosoRetailDW','dbo','DimCustomer','AddressLine1',0,0,0,0,0,12)
INSERT INTO column_data_train VALUES('ContosoRetailDW','dbo','DimCustomer','AddressLine2',0,0,0,0,0,12)
INSERT INTO column_data_train VALUES('ContosoRetailDW','dbo','DimCustomer','BirthDate',0,0,0,0,0,9)
INSERT INTO column_data_train VALUES('ContosoRetailDW','dbo','DimCustomer','CompanyName',0,1,0,0,0,11)
INSERT INTO column_data_train VALUES('ContosoRetailDW','dbo','DimCustomer','CustomerKey',0,0,0,0,1,11)
INSERT INTO column_data_train VALUES('ContosoRetailDW','dbo','DimCustomer','CustomerLabel',0,0,0,0,0,13)
INSERT INTO column_data_train VALUES('ContosoRetailDW','dbo','DimCustomer','CustomerType',0,0,0,0,0,12)
INSERT INTO column_data_train VALUES('ContosoRetailDW','dbo','DimCustomer','DateFirstPurchase',0,0,0,0,0,17)
INSERT INTO column_data_train VALUES('ContosoRetailDW','dbo','DimCustomer','Education',0,0,0,0,0,9)
INSERT INTO column_data_train VALUES('ContosoRetailDW','dbo','DimCustomer','EmailAddress',0,0,0,0,0,12)
INSERT INTO column_data_train VALUES('ContosoRetailDW','dbo','DimCustomer','ETLLoadID',1,0,0,0,0,9)
INSERT INTO column_data_train VALUES('ContosoRetailDW','dbo','DimCustomer','FirstName',0,1,0,0,0,9)
INSERT INTO column_data_train VALUES('ContosoRetailDW','dbo','DimCustomer','Gender',0,0,0,0,0,6)
INSERT INTO column_data_train VALUES('ContosoRetailDW','dbo','DimCustomer','GeographyKey',0,0,0,0,1,12)
INSERT INTO column_data_train VALUES('ContosoRetailDW','dbo','DimCustomer','HouseOwnerFlag',0,0,0,0,0,14)
INSERT INTO column_data_train VALUES('ContosoRetailDW','dbo','DimCustomer','LastName',0,1,0,0,0,8)
INSERT INTO column_data_train VALUES('ContosoRetailDW','dbo','DimCustomer','LoadDate',0,0,0,0,0,8)
INSERT INTO column_data_train VALUES('ContosoRetailDW','dbo','DimCustomer','MaritalStatus',0,0,0,0,0,13)
INSERT INTO column_data_train VALUES('ContosoRetailDW','dbo','DimCustomer','MiddleName',1,1,0,0,0,10)
INSERT INTO column_data_train VALUES('ContosoRetailDW','dbo','DimCustomer','NameStyle',0,1,0,0,0,9)
INSERT INTO column_data_train VALUES('ContosoRetailDW','dbo','DimCustomer','NumberCarsOwned',0,0,1,0,0,15)
INSERT INTO column_data_train VALUES('ContosoRetailDW','dbo','DimCustomer','NumberChildrenAtHome',0,0,1,0,0,20)
INSERT INTO column_data_train VALUES('ContosoRetailDW','dbo','DimCustomer','Occupation',0,0,0,0,0,10)
INSERT INTO column_data_train VALUES('ContosoRetailDW','dbo','DimCustomer','Phone',0,0,0,0,0,5)
INSERT INTO column_data_train VALUES('ContosoRetailDW','dbo','DimCustomer','Suffix',0,0,0,0,0,6)
INSERT INTO column_data_train VALUES('ContosoRetailDW','dbo','DimCustomer','Title',0,0,0,0,0,5)
INSERT INTO column_data_train VALUES('ContosoRetailDW','dbo','DimCustomer','TotalChildren',0,0,0,0,0,13)
INSERT INTO column_data_train VALUES('ContosoRetailDW','dbo','DimCustomer','UpdateDate',0,0,0,0,0,10)
INSERT INTO column_data_train VALUES('ContosoRetailDW','dbo','DimCustomer','YearlyIncome',0,0,0,0,0,12)
INSERT INTO column_data_train VALUES('ContosoRetailDW','dbo','DimDate','AsiaSeason',0,0,0,0,0,10)
INSERT INTO column_data_train VALUES('ContosoRetailDW','dbo','DimDate','CalendarDayOfWeek',0,0,0,0,0,17)
INSERT INTO column_data_train VALUES('ContosoRetailDW','dbo','DimDate','CalendarDayOfWeekLabel',0,0,0,0,0,22)
INSERT INTO column_data_train VALUES('ContosoRetailDW','dbo','DimDate','CalendarHalfYear',0,0,0,0,0,16)
INSERT INTO column_data_train VALUES('ContosoRetailDW','dbo','DimDate','CalendarHalfYearLabel',0,0,0,0,0,21)
INSERT INTO column_data_train VALUES('ContosoRetailDW','dbo','DimDate','CalendarMonth',0,0,0,0,0,13)
INSERT INTO column_data_train VALUES('ContosoRetailDW','dbo','DimDate','CalendarMonthLabel',0,0,0,0,0,18)
INSERT INTO column_data_train VALUES('ContosoRetailDW','dbo','DimDate','CalendarQuarter',0,0,0,0,0,15)
INSERT INTO column_data_train VALUES('ContosoRetailDW','dbo','DimDate','CalendarQuarterLabel',0,0,0,0,0,20)
INSERT INTO column_data_train VALUES('ContosoRetailDW','dbo','DimDate','CalendarWeek',0,0,0,0,0,12)
INSERT INTO column_data_train VALUES('ContosoRetailDW','dbo','DimDate','CalendarWeekLabel',0,0,0,0,0,17)
INSERT INTO column_data_train VALUES('ContosoRetailDW','dbo','DimDate','CalendarYear',0,0,0,0,0,12)
INSERT INTO column_data_train VALUES('ContosoRetailDW','dbo','DimDate','CalendarYearLabel',0,0,0,0,0,17)
INSERT INTO column_data_train VALUES('ContosoRetailDW','dbo','DimDate','DateDescription',0,0,0,0,0,15)
INSERT INTO column_data_train VALUES('ContosoRetailDW','dbo','DimDate','Datekey',0,0,0,0,1,7)
INSERT INTO column_data_train VALUES('ContosoRetailDW','dbo','DimDate','EuropeSeason',0,0,0,0,0,12)
INSERT INTO column_data_train VALUES('ContosoRetailDW','dbo','DimDate','FiscalHalfYear',0,0,0,0,0,14)
INSERT INTO column_data_train VALUES('ContosoRetailDW','dbo','DimDate','FiscalHalfYearLabel',0,0,0,0,0,19)
INSERT INTO column_data_train VALUES('ContosoRetailDW','dbo','DimDate','FiscalMonth',0,0,0,0,0,11)
INSERT INTO column_data_train VALUES('ContosoRetailDW','dbo','DimDate','FiscalMonthLabel',0,0,0,0,0,16)
INSERT INTO column_data_train VALUES('ContosoRetailDW','dbo','DimDate','FiscalQuarter',0,0,0,0,0,13)
INSERT INTO column_data_train VALUES('ContosoRetailDW','dbo','DimDate','FiscalQuarterLabel',0,0,0,0,0,18)
INSERT INTO column_data_train VALUES('ContosoRetailDW','dbo','DimDate','FiscalYear',0,0,0,0,0,10)
INSERT INTO column_data_train VALUES('ContosoRetailDW','dbo','DimDate','FiscalYearLabel',0,0,0,0,0,15)
INSERT INTO column_data_train VALUES('ContosoRetailDW','dbo','DimDate','FullDateLabel',0,0,0,0,0,13)
INSERT INTO column_data_train VALUES('ContosoRetailDW','dbo','DimDate','HolidayName',1,1,0,0,0,11)
INSERT INTO column_data_train VALUES('ContosoRetailDW','dbo','DimDate','IsHoliday',1,0,0,0,0,9)
INSERT INTO column_data_train VALUES('ContosoRetailDW','dbo','DimDate','IsWorkDay',0,0,0,0,0,9)
INSERT INTO column_data_train VALUES('ContosoRetailDW','dbo','DimDate','NorthAmericaSeason',0,0,0,0,0,18)
INSERT INTO column_data_train VALUES('ContosoRetailDW','dbo','DimEmployee','BaseRate',0,0,0,0,0,8)
INSERT INTO column_data_train VALUES('ContosoRetailDW','dbo','DimEmployee','BirthDate',0,0,0,0,0,9)
INSERT INTO column_data_train VALUES('ContosoRetailDW','dbo','DimEmployee','CurrentFlag',0,0,0,0,0,11)
INSERT INTO column_data_train VALUES('ContosoRetailDW','dbo','DimEmployee','DepartmentName',0,1,0,0,0,14)
INSERT INTO column_data_train VALUES('ContosoRetailDW','dbo','DimEmployee','EmailAddress',0,0,0,0,0,12)
INSERT INTO column_data_train VALUES('ContosoRetailDW','dbo','DimEmployee','EmergencyContactName',0,1,0,0,0,20)
INSERT INTO column_data_train VALUES('ContosoRetailDW','dbo','DimEmployee','EmergencyContactPhone',0,0,0,0,0,21)
INSERT INTO column_data_train VALUES('ContosoRetailDW','dbo','DimEmployee','EmployeeKey',0,0,0,0,1,11)
INSERT INTO column_data_train VALUES('ContosoRetailDW','dbo','DimEmployee','EndDate',0,0,0,0,0,7)
INSERT INTO column_data_train VALUES('ContosoRetailDW','dbo','DimEmployee','ETLLoadID',1,0,0,0,0,9)
INSERT INTO column_data_train VALUES('ContosoRetailDW','dbo','DimEmployee','FirstName',0,1,0,0,0,9)
INSERT INTO column_data_train VALUES('ContosoRetailDW','dbo','DimEmployee','Gender',0,0,0,0,0,6)
INSERT INTO column_data_train VALUES('ContosoRetailDW','dbo','DimEmployee','HireDate',0,0,0,0,0,8)
INSERT INTO column_data_train VALUES('ContosoRetailDW','dbo','DimEmployee','LastName',0,1,0,0,0,8)
INSERT INTO column_data_train VALUES('ContosoRetailDW','dbo','DimEmployee','LoadDate',0,0,0,0,0,8)
INSERT INTO column_data_train VALUES('ContosoRetailDW','dbo','DimEmployee','MaritalStatus',0,0,0,0,0,13)
INSERT INTO column_data_train VALUES('ContosoRetailDW','dbo','DimEmployee','MiddleName',1,1,0,0,0,10)
INSERT INTO column_data_train VALUES('ContosoRetailDW','dbo','DimEmployee','ParentEmployeeKey',0,0,0,0,1,17)
INSERT INTO column_data_train VALUES('ContosoRetailDW','dbo','DimEmployee','PayFrequency',0,0,0,0,0,12)
INSERT INTO column_data_train VALUES('ContosoRetailDW','dbo','DimEmployee','Phone',0,0,0,0,0,5)
INSERT INTO column_data_train VALUES('ContosoRetailDW','dbo','DimEmployee','SalariedFlag',0,0,0,0,0,12)
INSERT INTO column_data_train VALUES('ContosoRetailDW','dbo','DimEmployee','SalesPersonFlag',0,0,0,0,0,15)
INSERT INTO column_data_train VALUES('ContosoRetailDW','dbo','DimEmployee','StartDate',0,0,0,0,0,9)
INSERT INTO column_data_train VALUES('ContosoRetailDW','dbo','DimEmployee','Status',0,0,0,0,0,6)
INSERT INTO column_data_train VALUES('ContosoRetailDW','dbo','DimEmployee','Title',0,0,0,0,0,5)
INSERT INTO column_data_train VALUES('ContosoRetailDW','dbo','DimEmployee','UpdateDate',0,0,0,0,0,10)
INSERT INTO column_data_train VALUES('ContosoRetailDW','dbo','DimEmployee','VacationHours',0,0,0,0,0,13)
INSERT INTO column_data_train VALUES('ContosoRetailDW','dbo','DimEntity','EndDate',0,0,0,0,0,7)
INSERT INTO column_data_train VALUES('ContosoRetailDW','dbo','DimEntity','EntityDescription',0,0,0,0,0,17)
INSERT INTO column_data_train VALUES('ContosoRetailDW','dbo','DimEntity','EntityKey',0,0,0,0,1,9)
INSERT INTO column_data_train VALUES('ContosoRetailDW','dbo','DimEntity','EntityLabel',0,0,0,0,0,11)
INSERT INTO column_data_train VALUES('ContosoRetailDW','dbo','DimEntity','EntityName',0,1,0,0,0,10)
INSERT INTO column_data_train VALUES('ContosoRetailDW','dbo','DimEntity','EntityType',0,0,0,0,0,10)
INSERT INTO column_data_train VALUES('ContosoRetailDW','dbo','DimEntity','ETLLoadID',1,0,0,0,0,9)
INSERT INTO column_data_train VALUES('ContosoRetailDW','dbo','DimEntity','LoadDate',0,0,0,0,0,8)
INSERT INTO column_data_train VALUES('ContosoRetailDW','dbo','DimEntity','ParentEntityKey',0,0,0,0,1,15)
INSERT INTO column_data_train VALUES('ContosoRetailDW','dbo','DimEntity','ParentEntityLabel',0,0,0,0,0,17)
INSERT INTO column_data_train VALUES('ContosoRetailDW','dbo','DimEntity','StartDate',0,0,0,0,0,9)
INSERT INTO column_data_train VALUES('ContosoRetailDW','dbo','DimEntity','Status',0,0,0,0,0,6)
INSERT INTO column_data_train VALUES('ContosoRetailDW','dbo','DimEntity','UpdateDate',0,0,0,0,0,10)
INSERT INTO column_data_train VALUES('ContosoRetailDW','dbo','DimGeography','CityName',0,1,0,0,0,8)
INSERT INTO column_data_train VALUES('ContosoRetailDW','dbo','DimGeography','ContinentName',0,1,0,0,0,13)
INSERT INTO column_data_train VALUES('ContosoRetailDW','dbo','DimGeography','ETLLoadID',1,0,0,0,0,9)
INSERT INTO column_data_train VALUES('ContosoRetailDW','dbo','DimGeography','GeographyKey',0,0,0,0,1,12)
INSERT INTO column_data_train VALUES('ContosoRetailDW','dbo','DimGeography','GeographyType',0,0,0,0,0,13)
INSERT INTO column_data_train VALUES('ContosoRetailDW','dbo','DimGeography','Geometry',0,0,0,0,0,8)
INSERT INTO column_data_train VALUES('ContosoRetailDW','dbo','DimGeography','LoadDate',0,0,0,0,0,8)
INSERT INTO column_data_train VALUES('ContosoRetailDW','dbo','DimGeography','RegionCountryName',0,1,0,0,0,17)
INSERT INTO column_data_train VALUES('ContosoRetailDW','dbo','DimGeography','StateProvinceName',0,1,0,0,0,17)
INSERT INTO column_data_train VALUES('ContosoRetailDW','dbo','DimGeography','UpdateDate',0,0,0,0,0,10)
INSERT INTO column_data_train VALUES('ContosoRetailDW','dbo','DimMachine','DecommissionDate',0,0,0,0,0,16)
INSERT INTO column_data_train VALUES('ContosoRetailDW','dbo','DimMachine','ETLLoadID',1,0,0,0,0,9)
INSERT INTO column_data_train VALUES('ContosoRetailDW','dbo','DimMachine','LastModifiedDate',0,0,0,0,0,16)
INSERT INTO column_data_train VALUES('ContosoRetailDW','dbo','DimMachine','LoadDate',0,0,0,0,0,8)
INSERT INTO column_data_train VALUES('ContosoRetailDW','dbo','DimMachine','MachineDescription',0,0,0,0,0,18)
INSERT INTO column_data_train VALUES('ContosoRetailDW','dbo','DimMachine','MachineHardware',0,0,0,0,0,15)
INSERT INTO column_data_train VALUES('ContosoRetailDW','dbo','DimMachine','MachineKey',0,0,0,0,1,10)
INSERT INTO column_data_train VALUES('ContosoRetailDW','dbo','DimMachine','MachineLabel',0,0,0,0,0,12)
INSERT INTO column_data_train VALUES('ContosoRetailDW','dbo','DimMachine','MachineName',0,1,0,0,0,11)
INSERT INTO column_data_train VALUES('ContosoRetailDW','dbo','DimMachine','MachineOS',0,0,0,0,0,9)
INSERT INTO column_data_train VALUES('ContosoRetailDW','dbo','DimMachine','MachineSoftware',0,0,0,0,0,15)
INSERT INTO column_data_train VALUES('ContosoRetailDW','dbo','DimMachine','MachineSource',0,0,0,0,0,13)
INSERT INTO column_data_train VALUES('ContosoRetailDW','dbo','DimMachine','MachineType',0,0,0,0,0,11)
INSERT INTO column_data_train VALUES('ContosoRetailDW','dbo','DimMachine','ServiceStartDate',0,0,0,0,0,16)
INSERT INTO column_data_train VALUES('ContosoRetailDW','dbo','DimMachine','Status',0,0,0,0,0,6)
INSERT INTO column_data_train VALUES('ContosoRetailDW','dbo','DimMachine','StoreKey',0,0,0,0,1,8)
INSERT INTO column_data_train VALUES('ContosoRetailDW','dbo','DimMachine','UpdateDate',0,0,0,0,0,10)
INSERT INTO column_data_train VALUES('ContosoRetailDW','dbo','DimMachine','VendorName',0,1,0,0,0,10)
INSERT INTO column_data_train VALUES('ContosoRetailDW','dbo','DimOutage','ETLLoadID',1,0,0,0,0,9)
INSERT INTO column_data_train VALUES('ContosoRetailDW','dbo','DimOutage','LoadDate',0,0,0,0,0,8)
INSERT INTO column_data_train VALUES('ContosoRetailDW','dbo','DimOutage','OutageDescription',0,0,0,0,0,17)
INSERT INTO column_data_train VALUES('ContosoRetailDW','dbo','DimOutage','OutageKey',0,0,0,0,1,9)
INSERT INTO column_data_train VALUES('ContosoRetailDW','dbo','DimOutage','OutageLabel',0,0,0,0,0,11)
INSERT INTO column_data_train VALUES('ContosoRetailDW','dbo','DimOutage','OutageName',0,1,0,0,0,10)
INSERT INTO column_data_train VALUES('ContosoRetailDW','dbo','DimOutage','OutageSubType',0,0,0,0,0,13)
INSERT INTO column_data_train VALUES('ContosoRetailDW','dbo','DimOutage','OutageSubTypeDescription',0,0,0,0,0,24)
INSERT INTO column_data_train VALUES('ContosoRetailDW','dbo','DimOutage','OutageType',0,0,0,0,0,10)
INSERT INTO column_data_train VALUES('ContosoRetailDW','dbo','DimOutage','OutageTypeDescription',0,0,0,0,0,21)
INSERT INTO column_data_train VALUES('ContosoRetailDW','dbo','DimOutage','UpdateDate',0,0,0,0,0,10)
INSERT INTO column_data_train VALUES('ContosoRetailDW','dbo','DimProduct','AvailableForSaleDate',0,0,0,0,0,20)
INSERT INTO column_data_train VALUES('ContosoRetailDW','dbo','DimProduct','BrandName',0,1,0,0,0,9)
INSERT INTO column_data_train VALUES('ContosoRetailDW','dbo','DimProduct','ClassID',1,0,0,0,0,7)
INSERT INTO column_data_train VALUES('ContosoRetailDW','dbo','DimProduct','ClassName',0,1,0,0,0,9)
INSERT INTO column_data_train VALUES('ContosoRetailDW','dbo','DimProduct','ColorID',1,0,0,0,0,7)
INSERT INTO column_data_train VALUES('ContosoRetailDW','dbo','DimProduct','ColorName',0,1,0,0,0,9)
INSERT INTO column_data_train VALUES('ContosoRetailDW','dbo','DimProduct','ETLLoadID',1,0,0,0,0,9)
INSERT INTO column_data_train VALUES('ContosoRetailDW','dbo','DimProduct','ImageURL',0,0,0,0,0,8)
INSERT INTO column_data_train VALUES('ContosoRetailDW','dbo','DimProduct','LoadDate',0,0,0,0,0,8)
INSERT INTO column_data_train VALUES('ContosoRetailDW','dbo','DimProduct','Manufacturer',0,0,0,0,0,12)
INSERT INTO column_data_train VALUES('ContosoRetailDW','dbo','DimProduct','ProductDescription',0,0,0,0,0,18)
INSERT INTO column_data_train VALUES('ContosoRetailDW','dbo','DimProduct','ProductKey',0,0,0,0,1,10)
INSERT INTO column_data_train VALUES('ContosoRetailDW','dbo','DimProduct','ProductLabel',0,0,0,0,0,12)
INSERT INTO column_data_train VALUES('ContosoRetailDW','dbo','DimProduct','ProductName',0,1,0,0,0,11)
INSERT INTO column_data_train VALUES('ContosoRetailDW','dbo','DimProduct','ProductSubcategoryKey',0,0,0,0,1,21)
INSERT INTO column_data_train VALUES('ContosoRetailDW','dbo','DimProduct','ProductURL',0,0,0,0,0,10)
INSERT INTO column_data_train VALUES('ContosoRetailDW','dbo','DimProduct','Size',0,0,0,0,0,4)
INSERT INTO column_data_train VALUES('ContosoRetailDW','dbo','DimProduct','SizeRange',0,0,0,0,0,9)
INSERT INTO column_data_train VALUES('ContosoRetailDW','dbo','DimProduct','SizeUnitMeasureID',1,0,0,0,0,17)
INSERT INTO column_data_train VALUES('ContosoRetailDW','dbo','DimProduct','Status',0,0,0,0,0,6)
INSERT INTO column_data_train VALUES('ContosoRetailDW','dbo','DimProduct','StockTypeID',1,0,0,0,0,11)
INSERT INTO column_data_train VALUES('ContosoRetailDW','dbo','DimProduct','StockTypeName',0,1,0,0,0,13)
INSERT INTO column_data_train VALUES('ContosoRetailDW','dbo','DimProduct','StopSaleDate',0,0,0,0,0,12)
INSERT INTO column_data_train VALUES('ContosoRetailDW','dbo','DimProduct','StyleID',1,0,0,0,0,7)
INSERT INTO column_data_train VALUES('ContosoRetailDW','dbo','DimProduct','StyleName',0,1,0,0,0,9)
INSERT INTO column_data_train VALUES('ContosoRetailDW','dbo','DimProduct','UnitCost',0,0,0,0,0,8)
INSERT INTO column_data_train VALUES('ContosoRetailDW','dbo','DimProduct','UnitOfMeasureID',1,0,0,0,0,15)
INSERT INTO column_data_train VALUES('ContosoRetailDW','dbo','DimProduct','UnitOfMeasureName',0,1,0,0,0,17)
INSERT INTO column_data_train VALUES('ContosoRetailDW','dbo','DimProduct','UnitPrice',0,0,0,0,0,9)
INSERT INTO column_data_train VALUES('ContosoRetailDW','dbo','DimProduct','UpdateDate',0,0,0,0,0,10)
INSERT INTO column_data_train VALUES('ContosoRetailDW','dbo','DimProduct','Weight',0,0,0,0,0,6)
INSERT INTO column_data_train VALUES('ContosoRetailDW','dbo','DimProduct','WeightUnitMeasureID',1,0,0,0,0,19)
INSERT INTO column_data_train VALUES('ContosoRetailDW','dbo','DimProductCategory','ETLLoadID',1,0,0,0,0,9)
INSERT INTO column_data_train VALUES('ContosoRetailDW','dbo','DimProductCategory','LoadDate',0,0,0,0,0,8)
INSERT INTO column_data_train VALUES('ContosoRetailDW','dbo','DimProductCategory','ProductCategoryDescription',0,0,0,0,0,26)
INSERT INTO column_data_train VALUES('ContosoRetailDW','dbo','DimProductCategory','ProductCategoryKey',0,0,0,0,1,18)
INSERT INTO column_data_train VALUES('ContosoRetailDW','dbo','DimProductCategory','ProductCategoryLabel',0,0,0,0,0,20)
INSERT INTO column_data_train VALUES('ContosoRetailDW','dbo','DimProductCategory','ProductCategoryName',0,1,0,0,0,19)
INSERT INTO column_data_train VALUES('ContosoRetailDW','dbo','DimProductCategory','UpdateDate',0,0,0,0,0,10)
INSERT INTO column_data_train VALUES('ContosoRetailDW','dbo','DimProductSubcategory','ETLLoadID',1,0,0,0,0,9)
INSERT INTO column_data_train VALUES('ContosoRetailDW','dbo','DimProductSubcategory','LoadDate',0,0,0,0,0,8)
INSERT INTO column_data_train VALUES('ContosoRetailDW','dbo','DimProductSubcategory','ProductCategoryKey',0,0,0,0,1,18)
INSERT INTO column_data_train VALUES('ContosoRetailDW','dbo','DimProductSubcategory','ProductSubcategoryDescription',0,0,0,0,0,29)
INSERT INTO column_data_train VALUES('ContosoRetailDW','dbo','DimProductSubcategory','ProductSubcategoryKey',0,0,0,0,1,21)
INSERT INTO column_data_train VALUES('ContosoRetailDW','dbo','DimProductSubcategory','ProductSubcategoryLabel',0,0,0,0,0,23)
INSERT INTO column_data_train VALUES('ContosoRetailDW','dbo','DimProductSubcategory','ProductSubcategoryName',0,1,0,0,0,22)
INSERT INTO column_data_train VALUES('ContosoRetailDW','dbo','DimProductSubcategory','UpdateDate',0,0,0,0,0,10)
INSERT INTO column_data_train VALUES('ContosoRetailDW','dbo','DimPromotion','DiscountPercent',0,0,0,0,0,15)
INSERT INTO column_data_train VALUES('ContosoRetailDW','dbo','DimPromotion','EndDate',0,0,0,0,0,7)
INSERT INTO column_data_train VALUES('ContosoRetailDW','dbo','DimPromotion','ETLLoadID',1,0,0,0,0,9)
INSERT INTO column_data_train VALUES('ContosoRetailDW','dbo','DimPromotion','LoadDate',0,0,0,0,0,8)
INSERT INTO column_data_train VALUES('ContosoRetailDW','dbo','DimPromotion','MaxQuantity',0,0,0,0,0,11)
INSERT INTO column_data_train VALUES('ContosoRetailDW','dbo','DimPromotion','MinQuantity',0,0,0,0,0,11)
INSERT INTO column_data_train VALUES('ContosoRetailDW','dbo','DimPromotion','PromotionCategory',0,0,0,0,0,17)
INSERT INTO column_data_train VALUES('ContosoRetailDW','dbo','DimPromotion','PromotionDescription',0,0,0,0,0,20)
INSERT INTO column_data_train VALUES('ContosoRetailDW','dbo','DimPromotion','PromotionKey',0,0,0,0,1,12)
INSERT INTO column_data_train VALUES('ContosoRetailDW','dbo','DimPromotion','PromotionLabel',0,0,0,0,0,14)
INSERT INTO column_data_train VALUES('ContosoRetailDW','dbo','DimPromotion','PromotionName',0,1,0,0,0,13)
INSERT INTO column_data_train VALUES('ContosoRetailDW','dbo','DimPromotion','PromotionType',0,0,0,0,0,13)
INSERT INTO column_data_train VALUES('ContosoRetailDW','dbo','DimPromotion','StartDate',0,0,0,0,0,9)
INSERT INTO column_data_train VALUES('ContosoRetailDW','dbo','DimPromotion','UpdateDate',0,0,0,0,0,10)
INSERT INTO column_data_train VALUES('ContosoRetailDW','dbo','DimSalesTerritory','EndDate',0,0,0,0,0,7)
INSERT INTO column_data_train VALUES('ContosoRetailDW','dbo','DimSalesTerritory','ETLLoadID',1,0,0,0,0,9)
INSERT INTO column_data_train VALUES('ContosoRetailDW','dbo','DimSalesTerritory','GeographyKey',0,0,0,0,1,12)
INSERT INTO column_data_train VALUES('ContosoRetailDW','dbo','DimSalesTerritory','LoadDate',0,0,0,0,0,8)
INSERT INTO column_data_train VALUES('ContosoRetailDW','dbo','DimSalesTerritory','SalesTerritoryCountry',0,0,0,0,0,21)
INSERT INTO column_data_train VALUES('ContosoRetailDW','dbo','DimSalesTerritory','SalesTerritoryGroup',0,0,0,0,0,19)
INSERT INTO column_data_train VALUES('ContosoRetailDW','dbo','DimSalesTerritory','SalesTerritoryKey',0,0,0,0,1,17)
INSERT INTO column_data_train VALUES('ContosoRetailDW','dbo','DimSalesTerritory','SalesTerritoryLabel',0,0,0,0,0,19)
INSERT INTO column_data_train VALUES('ContosoRetailDW','dbo','DimSalesTerritory','SalesTerritoryLevel',0,0,0,0,0,19)
INSERT INTO column_data_train VALUES('ContosoRetailDW','dbo','DimSalesTerritory','SalesTerritoryManager',0,0,0,0,0,21)
INSERT INTO column_data_train VALUES('ContosoRetailDW','dbo','DimSalesTerritory','SalesTerritoryName',0,1,0,0,0,18)
INSERT INTO column_data_train VALUES('ContosoRetailDW','dbo','DimSalesTerritory','SalesTerritoryRegion',0,0,0,0,0,20)
INSERT INTO column_data_train VALUES('ContosoRetailDW','dbo','DimSalesTerritory','StartDate',0,0,0,0,0,9)
INSERT INTO column_data_train VALUES('ContosoRetailDW','dbo','DimSalesTerritory','Status',0,0,0,0,0,6)
INSERT INTO column_data_train VALUES('ContosoRetailDW','dbo','DimSalesTerritory','UpdateDate',0,0,0,0,0,10)
INSERT INTO column_data_train VALUES('ContosoRetailDW','dbo','DimScenario','ETLLoadID',1,0,0,0,0,9)
INSERT INTO column_data_train VALUES('ContosoRetailDW','dbo','DimScenario','LoadDate',0,0,0,0,0,8)
INSERT INTO column_data_train VALUES('ContosoRetailDW','dbo','DimScenario','ScenarioDescription',0,0,0,0,0,19)
INSERT INTO column_data_train VALUES('ContosoRetailDW','dbo','DimScenario','ScenarioKey',0,0,0,0,1,11)
INSERT INTO column_data_train VALUES('ContosoRetailDW','dbo','DimScenario','ScenarioLabel',0,0,0,0,0,13)
INSERT INTO column_data_train VALUES('ContosoRetailDW','dbo','DimScenario','ScenarioName',0,1,0,0,0,12)
INSERT INTO column_data_train VALUES('ContosoRetailDW','dbo','DimScenario','UpdateDate',0,0,0,0,0,10)
INSERT INTO column_data_train VALUES('ContosoRetailDW','dbo','DimStore','AddressLine1',0,0,0,0,0,12)
INSERT INTO column_data_train VALUES('ContosoRetailDW','dbo','DimStore','AddressLine2',0,0,0,0,0,12)
INSERT INTO column_data_train VALUES('ContosoRetailDW','dbo','DimStore','CloseDate',0,0,0,0,0,9)
INSERT INTO column_data_train VALUES('ContosoRetailDW','dbo','DimStore','CloseReason',0,0,0,0,0,11)
INSERT INTO column_data_train VALUES('ContosoRetailDW','dbo','DimStore','EmployeeCount',0,0,0,0,0,13)
INSERT INTO column_data_train VALUES('ContosoRetailDW','dbo','DimStore','EntityKey',0,0,0,0,1,9)
INSERT INTO column_data_train VALUES('ContosoRetailDW','dbo','DimStore','ETLLoadID',1,0,0,0,0,9)
INSERT INTO column_data_train VALUES('ContosoRetailDW','dbo','DimStore','GeographyKey',0,0,0,0,1,12)
INSERT INTO column_data_train VALUES('ContosoRetailDW','dbo','DimStore','GeoLocation',0,0,0,0,0,11)
INSERT INTO column_data_train VALUES('ContosoRetailDW','dbo','DimStore','Geometry',0,0,0,0,0,8)
INSERT INTO column_data_train VALUES('ContosoRetailDW','dbo','DimStore','LastRemodelDate',0,0,0,0,0,15)
INSERT INTO column_data_train VALUES('ContosoRetailDW','dbo','DimStore','LoadDate',0,0,0,0,0,8)
INSERT INTO column_data_train VALUES('ContosoRetailDW','dbo','DimStore','OpenDate',0,0,0,0,0,8)
INSERT INTO column_data_train VALUES('ContosoRetailDW','dbo','DimStore','SellingAreaSize',0,0,0,0,0,15)
INSERT INTO column_data_train VALUES('ContosoRetailDW','dbo','DimStore','Status',0,0,0,0,0,6)
INSERT INTO column_data_train VALUES('ContosoRetailDW','dbo','DimStore','StoreDescription',0,0,0,0,0,16)
INSERT INTO column_data_train VALUES('ContosoRetailDW','dbo','DimStore','StoreFax',0,0,0,0,0,8)
INSERT INTO column_data_train VALUES('ContosoRetailDW','dbo','DimStore','StoreKey',0,0,0,0,1,8)
INSERT INTO column_data_train VALUES('ContosoRetailDW','dbo','DimStore','StoreManager',0,0,0,0,0,12)
INSERT INTO column_data_train VALUES('ContosoRetailDW','dbo','DimStore','StoreName',0,1,0,0,0,9)
INSERT INTO column_data_train VALUES('ContosoRetailDW','dbo','DimStore','StorePhone',0,0,0,0,0,10)
INSERT INTO column_data_train VALUES('ContosoRetailDW','dbo','DimStore','StoreType',0,0,0,0,0,9)
INSERT INTO column_data_train VALUES('ContosoRetailDW','dbo','DimStore','UpdateDate',0,0,0,0,0,10)
INSERT INTO column_data_train VALUES('ContosoRetailDW','dbo','DimStore','ZipCode',0,0,0,0,0,7)
INSERT INTO column_data_train VALUES('ContosoRetailDW','dbo','DimStore','ZipCodeExtension',0,0,0,0,0,16)
INSERT INTO column_data_train VALUES('ContosoRetailDW','dbo','FactExchangeRate','AverageRate',0,0,0,0,0,11)
INSERT INTO column_data_train VALUES('ContosoRetailDW','dbo','FactExchangeRate','CurrencyKey',0,0,0,0,1,11)
INSERT INTO column_data_train VALUES('ContosoRetailDW','dbo','FactExchangeRate','DateKey',0,0,0,0,1,7)
INSERT INTO column_data_train VALUES('ContosoRetailDW','dbo','FactExchangeRate','EndOfDayRate',0,0,0,0,0,12)
INSERT INTO column_data_train VALUES('ContosoRetailDW','dbo','FactExchangeRate','ETLLoadID',1,0,0,0,0,9)
INSERT INTO column_data_train VALUES('ContosoRetailDW','dbo','FactExchangeRate','ExchangeRateKey',0,0,0,0,1,15)
INSERT INTO column_data_train VALUES('ContosoRetailDW','dbo','FactExchangeRate','LoadDate',0,0,0,0,0,8)
INSERT INTO column_data_train VALUES('ContosoRetailDW','dbo','FactExchangeRate','UpdateDate',0,0,0,0,0,10)
INSERT INTO column_data_train VALUES('ContosoRetailDW','dbo','FactInventory','Aging',0,0,0,0,0,5)
INSERT INTO column_data_train VALUES('ContosoRetailDW','dbo','FactInventory','CurrencyKey',0,0,0,0,1,11)
INSERT INTO column_data_train VALUES('ContosoRetailDW','dbo','FactInventory','DateKey',0,0,0,0,1,7)
INSERT INTO column_data_train VALUES('ContosoRetailDW','dbo','FactInventory','DaysInStock',0,0,0,0,0,11)
INSERT INTO column_data_train VALUES('ContosoRetailDW','dbo','FactInventory','ETLLoadID',1,0,0,0,0,9)
INSERT INTO column_data_train VALUES('ContosoRetailDW','dbo','FactInventory','InventoryKey',0,0,0,0,1,12)
INSERT INTO column_data_train VALUES('ContosoRetailDW','dbo','FactInventory','LoadDate',0,0,0,0,0,8)
INSERT INTO column_data_train VALUES('ContosoRetailDW','dbo','FactInventory','MaxDayInStock',0,0,0,0,0,13)
INSERT INTO column_data_train VALUES('ContosoRetailDW','dbo','FactInventory','MinDayInStock',0,0,0,0,0,13)
INSERT INTO column_data_train VALUES('ContosoRetailDW','dbo','FactInventory','OnHandQuantity',0,0,0,0,0,14)
INSERT INTO column_data_train VALUES('ContosoRetailDW','dbo','FactInventory','OnOrderQuantity',0,0,0,0,0,15)
INSERT INTO column_data_train VALUES('ContosoRetailDW','dbo','FactInventory','ProductKey',0,0,0,0,1,10)
INSERT INTO column_data_train VALUES('ContosoRetailDW','dbo','FactInventory','SafetyStockQuantity',0,0,0,0,0,19)
INSERT INTO column_data_train VALUES('ContosoRetailDW','dbo','FactInventory','StoreKey',0,0,0,0,1,8)
INSERT INTO column_data_train VALUES('ContosoRetailDW','dbo','FactInventory','UnitCost',0,0,0,0,0,8)
INSERT INTO column_data_train VALUES('ContosoRetailDW','dbo','FactInventory','UpdateDate',0,0,0,0,0,10)
INSERT INTO column_data_train VALUES('ContosoRetailDW','dbo','FactITMachine','CostAmount',0,0,0,0,0,10)
INSERT INTO column_data_train VALUES('ContosoRetailDW','dbo','FactITMachine','CostType',0,0,0,0,0,8)
INSERT INTO column_data_train VALUES('ContosoRetailDW','dbo','FactITMachine','Datekey',0,0,0,0,1,7)
INSERT INTO column_data_train VALUES('ContosoRetailDW','dbo','FactITMachine','ETLLoadID',1,0,0,0,0,9)
INSERT INTO column_data_train VALUES('ContosoRetailDW','dbo','FactITMachine','ITMachinekey',0,0,0,0,1,12)
INSERT INTO column_data_train VALUES('ContosoRetailDW','dbo','FactITMachine','LoadDate',0,0,0,0,0,8)
INSERT INTO column_data_train VALUES('ContosoRetailDW','dbo','FactITMachine','MachineKey',0,0,0,0,1,10)
INSERT INTO column_data_train VALUES('ContosoRetailDW','dbo','FactITMachine','UpdateDate',0,0,0,0,0,10)
INSERT INTO column_data_train VALUES('ContosoRetailDW','dbo','FactITSLA','DateKey',0,0,0,0,1,7)
INSERT INTO column_data_train VALUES('ContosoRetailDW','dbo','FactITSLA','DownTime',0,0,0,0,0,8)
INSERT INTO column_data_train VALUES('ContosoRetailDW','dbo','FactITSLA','ETLLoadID',1,0,0,0,0,9)
INSERT INTO column_data_train VALUES('ContosoRetailDW','dbo','FactITSLA','ITSLAkey',0,0,0,0,1,8)
INSERT INTO column_data_train VALUES('ContosoRetailDW','dbo','FactITSLA','LoadDate',0,0,0,0,0,8)
INSERT INTO column_data_train VALUES('ContosoRetailDW','dbo','FactITSLA','MachineKey',0,0,0,0,1,10)
INSERT INTO column_data_train VALUES('ContosoRetailDW','dbo','FactITSLA','OutageEndTime',0,0,0,0,0,13)
INSERT INTO column_data_train VALUES('ContosoRetailDW','dbo','FactITSLA','OutageKey',0,0,0,0,1,9)
INSERT INTO column_data_train VALUES('ContosoRetailDW','dbo','FactITSLA','OutageStartTime',0,0,0,0,0,15)
INSERT INTO column_data_train VALUES('ContosoRetailDW','dbo','FactITSLA','StoreKey',0,0,0,0,1,8)
INSERT INTO column_data_train VALUES('ContosoRetailDW','dbo','FactITSLA','UpdateDate',0,0,0,0,0,10)
INSERT INTO column_data_train VALUES('ContosoRetailDW','dbo','FactOnlineSales','CurrencyKey',0,0,0,0,1,11)
INSERT INTO column_data_train VALUES('ContosoRetailDW','dbo','FactOnlineSales','CustomerKey',0,0,0,0,1,11)
INSERT INTO column_data_train VALUES('ContosoRetailDW','dbo','FactOnlineSales','DateKey',0,0,0,0,1,7)
INSERT INTO column_data_train VALUES('ContosoRetailDW','dbo','FactOnlineSales','DiscountAmount',0,0,0,0,0,14)
INSERT INTO column_data_train VALUES('ContosoRetailDW','dbo','FactOnlineSales','DiscountQuantity',0,0,0,0,0,16)
INSERT INTO column_data_train VALUES('ContosoRetailDW','dbo','FactOnlineSales','ETLLoadID',1,0,0,0,0,9)
INSERT INTO column_data_train VALUES('ContosoRetailDW','dbo','FactOnlineSales','LoadDate',0,0,0,0,0,8)
INSERT INTO column_data_train VALUES('ContosoRetailDW','dbo','FactOnlineSales','OnlineSalesKey',0,0,0,0,1,14)
INSERT INTO column_data_train VALUES('ContosoRetailDW','dbo','FactOnlineSales','ProductKey',0,0,0,0,1,10)
INSERT INTO column_data_train VALUES('ContosoRetailDW','dbo','FactOnlineSales','PromotionKey',0,0,0,0,1,12)
INSERT INTO column_data_train VALUES('ContosoRetailDW','dbo','FactOnlineSales','ReturnAmount',0,0,0,0,0,12)
INSERT INTO column_data_train VALUES('ContosoRetailDW','dbo','FactOnlineSales','ReturnQuantity',0,0,0,0,0,14)
INSERT INTO column_data_train VALUES('ContosoRetailDW','dbo','FactOnlineSales','SalesAmount',0,0,0,0,0,11)
INSERT INTO column_data_train VALUES('ContosoRetailDW','dbo','FactOnlineSales','SalesOrderLineNumber',0,0,1,0,0,20)
INSERT INTO column_data_train VALUES('ContosoRetailDW','dbo','FactOnlineSales','SalesOrderNumber',0,0,1,0,0,16)
INSERT INTO column_data_train VALUES('ContosoRetailDW','dbo','FactOnlineSales','SalesQuantity',0,0,0,0,0,13)
INSERT INTO column_data_train VALUES('ContosoRetailDW','dbo','FactOnlineSales','StoreKey',0,0,0,0,1,8)
INSERT INTO column_data_train VALUES('ContosoRetailDW','dbo','FactOnlineSales','TotalCost',0,0,0,0,0,9)
INSERT INTO column_data_train VALUES('ContosoRetailDW','dbo','FactOnlineSales','UnitCost',0,0,0,0,0,8)
INSERT INTO column_data_train VALUES('ContosoRetailDW','dbo','FactOnlineSales','UnitPrice',0,0,0,0,0,9)
INSERT INTO column_data_train VALUES('ContosoRetailDW','dbo','FactOnlineSales','UpdateDate',0,0,0,0,0,10)
INSERT INTO column_data_train VALUES('ContosoRetailDW','dbo','FactSales','channelKey',0,0,0,0,1,10)
INSERT INTO column_data_train VALUES('ContosoRetailDW','dbo','FactSales','CurrencyKey',0,0,0,0,1,11)
INSERT INTO column_data_train VALUES('ContosoRetailDW','dbo','FactSales','DateKey',0,0,0,0,1,7)
INSERT INTO column_data_train VALUES('ContosoRetailDW','dbo','FactSales','DiscountAmount',0,0,0,0,0,14)
INSERT INTO column_data_train VALUES('ContosoRetailDW','dbo','FactSales','DiscountQuantity',0,0,0,0,0,16)
INSERT INTO column_data_train VALUES('ContosoRetailDW','dbo','FactSales','ETLLoadID',1,0,0,0,0,9)
INSERT INTO column_data_train VALUES('ContosoRetailDW','dbo','FactSales','LoadDate',0,0,0,0,0,8)
INSERT INTO column_data_train VALUES('ContosoRetailDW','dbo','FactSales','ProductKey',0,0,0,0,1,10)
INSERT INTO column_data_train VALUES('ContosoRetailDW','dbo','FactSales','PromotionKey',0,0,0,0,1,12)
INSERT INTO column_data_train VALUES('ContosoRetailDW','dbo','FactSales','ReturnAmount',0,0,0,0,0,12)
INSERT INTO column_data_train VALUES('ContosoRetailDW','dbo','FactSales','ReturnQuantity',0,0,0,0,0,14)
INSERT INTO column_data_train VALUES('ContosoRetailDW','dbo','FactSales','SalesAmount',0,0,0,0,0,11)
INSERT INTO column_data_train VALUES('ContosoRetailDW','dbo','FactSales','SalesKey',0,0,0,0,1,8)
INSERT INTO column_data_train VALUES('ContosoRetailDW','dbo','FactSales','SalesQuantity',0,0,0,0,0,13)
INSERT INTO column_data_train VALUES('ContosoRetailDW','dbo','FactSales','StoreKey',0,0,0,0,1,8)
INSERT INTO column_data_train VALUES('ContosoRetailDW','dbo','FactSales','TotalCost',0,0,0,0,0,9)
INSERT INTO column_data_train VALUES('ContosoRetailDW','dbo','FactSales','UnitCost',0,0,0,0,0,8)
INSERT INTO column_data_train VALUES('ContosoRetailDW','dbo','FactSales','UnitPrice',0,0,0,0,0,9)
INSERT INTO column_data_train VALUES('ContosoRetailDW','dbo','FactSales','UpdateDate',0,0,0,0,0,10)
INSERT INTO column_data_train VALUES('ContosoRetailDW','dbo','FactSalesQuota','ChannelKey',0,0,0,0,1,10)
INSERT INTO column_data_train VALUES('ContosoRetailDW','dbo','FactSalesQuota','CurrencyKey',0,0,0,0,1,11)
INSERT INTO column_data_train VALUES('ContosoRetailDW','dbo','FactSalesQuota','DateKey',0,0,0,0,1,7)
INSERT INTO column_data_train VALUES('ContosoRetailDW','dbo','FactSalesQuota','ETLLoadID',1,0,0,0,0,9)
INSERT INTO column_data_train VALUES('ContosoRetailDW','dbo','FactSalesQuota','GrossMarginQuota',0,0,0,0,0,16)
INSERT INTO column_data_train VALUES('ContosoRetailDW','dbo','FactSalesQuota','LoadDate',0,0,0,0,0,8)
INSERT INTO column_data_train VALUES('ContosoRetailDW','dbo','FactSalesQuota','ProductKey',0,0,0,0,1,10)
INSERT INTO column_data_train VALUES('ContosoRetailDW','dbo','FactSalesQuota','SalesAmountQuota',0,0,0,0,0,16)
INSERT INTO column_data_train VALUES('ContosoRetailDW','dbo','FactSalesQuota','SalesQuantityQuota',0,0,0,0,0,18)
INSERT INTO column_data_train VALUES('ContosoRetailDW','dbo','FactSalesQuota','SalesQuotaKey',0,0,0,0,1,13)
INSERT INTO column_data_train VALUES('ContosoRetailDW','dbo','FactSalesQuota','ScenarioKey',0,0,0,0,1,11)
INSERT INTO column_data_train VALUES('ContosoRetailDW','dbo','FactSalesQuota','StoreKey',0,0,0,0,1,8)
INSERT INTO column_data_train VALUES('ContosoRetailDW','dbo','FactSalesQuota','UpdateDate',0,0,0,0,0,10)
INSERT INTO column_data_train VALUES('ContosoRetailDW','dbo','FactStrategyPlan','AccountKey',0,0,0,0,1,10)
INSERT INTO column_data_train VALUES('ContosoRetailDW','dbo','FactStrategyPlan','Amount',0,0,0,0,0,6)
INSERT INTO column_data_train VALUES('ContosoRetailDW','dbo','FactStrategyPlan','CurrencyKey',0,0,0,0,1,11)
INSERT INTO column_data_train VALUES('ContosoRetailDW','dbo','FactStrategyPlan','Datekey',0,0,0,0,1,7)
INSERT INTO column_data_train VALUES('ContosoRetailDW','dbo','FactStrategyPlan','EntityKey',0,0,0,0,1,9)
INSERT INTO column_data_train VALUES('ContosoRetailDW','dbo','FactStrategyPlan','ETLLoadID',1,0,0,0,0,9)
INSERT INTO column_data_train VALUES('ContosoRetailDW','dbo','FactStrategyPlan','LoadDate',0,0,0,0,0,8)
INSERT INTO column_data_train VALUES('ContosoRetailDW','dbo','FactStrategyPlan','ProductCategoryKey',0,0,0,0,1,18)
INSERT INTO column_data_train VALUES('ContosoRetailDW','dbo','FactStrategyPlan','ScenarioKey',0,0,0,0,1,11)
INSERT INTO column_data_train VALUES('ContosoRetailDW','dbo','FactStrategyPlan','StrategyPlanKey',0,0,0,0,1,15)
INSERT INTO column_data_train VALUES('ContosoRetailDW','dbo','FactStrategyPlan','UpdateDate',0,0,0,0,0,10)
INSERT INTO column_data_train VALUES('ContosoRetailDW','dbo','sysdiagrams','definition',0,0,0,0,0,10)
INSERT INTO column_data_train VALUES('ContosoRetailDW','dbo','sysdiagrams','diagram_id',1,0,0,0,0,10)
INSERT INTO column_data_train VALUES('ContosoRetailDW','dbo','sysdiagrams','name',0,1,0,0,0,4)
INSERT INTO column_data_train VALUES('ContosoRetailDW','dbo','sysdiagrams','principal_id',1,0,0,0,0,12)
INSERT INTO column_data_train VALUES('ContosoRetailDW','dbo','sysdiagrams','version',0,0,0,0,0,7)
INSERT INTO column_data_train VALUES('Dofactory','dbo','Customer','City',0,0,0,0,0,4)
INSERT INTO column_data_train VALUES('Dofactory','dbo','Customer','Country',0,0,0,0,0,7)
INSERT INTO column_data_train VALUES('Dofactory','dbo','Customer','FirstName',0,1,0,0,0,9)
INSERT INTO column_data_train VALUES('Dofactory','dbo','Customer','Id',1,0,0,0,0,2)
INSERT INTO column_data_train VALUES('Dofactory','dbo','Customer','LastName',0,1,0,0,0,8)
INSERT INTO column_data_train VALUES('Dofactory','dbo','Customer','Phone',0,0,0,0,0,5)
INSERT INTO column_data_train VALUES('Dofactory','dbo','Order','CustomerId',1,0,0,0,0,10)
INSERT INTO column_data_train VALUES('Dofactory','dbo','Order','Id',1,0,0,0,0,2)
INSERT INTO column_data_train VALUES('Dofactory','dbo','Order','OrderDate',0,0,0,0,0,9)
INSERT INTO column_data_train VALUES('Dofactory','dbo','Order','OrderNumber',0,0,1,0,0,11)
INSERT INTO column_data_train VALUES('Dofactory','dbo','Order','TotalAmount',0,0,0,0,0,11)
INSERT INTO column_data_train VALUES('Dofactory','dbo','OrderItem','Id',1,0,0,0,0,2)
INSERT INTO column_data_train VALUES('Dofactory','dbo','OrderItem','OrderId',1,0,0,0,0,7)
INSERT INTO column_data_train VALUES('Dofactory','dbo','OrderItem','ProductId',1,0,0,0,0,9)
INSERT INTO column_data_train VALUES('Dofactory','dbo','OrderItem','Quantity',0,0,0,0,0,8)
INSERT INTO column_data_train VALUES('Dofactory','dbo','OrderItem','UnitPrice',0,0,0,0,0,9)
INSERT INTO column_data_train VALUES('Dofactory','dbo','Product','Id',1,0,0,0,0,2)
INSERT INTO column_data_train VALUES('Dofactory','dbo','Product','IsDiscontinued',0,0,0,0,0,14)
INSERT INTO column_data_train VALUES('Dofactory','dbo','Product','Package',0,0,0,0,0,7)
INSERT INTO column_data_train VALUES('Dofactory','dbo','Product','ProductName',0,1,0,0,0,11)
INSERT INTO column_data_train VALUES('Dofactory','dbo','Product','SupplierId',1,0,0,0,0,10)
INSERT INTO column_data_train VALUES('Dofactory','dbo','Product','UnitPrice',0,0,0,0,0,9)
INSERT INTO column_data_train VALUES('Dofactory','dbo','Supplier','City',0,0,0,0,0,4)
INSERT INTO column_data_train VALUES('Dofactory','dbo','Supplier','CompanyName',0,1,0,0,0,11)
INSERT INTO column_data_train VALUES('Dofactory','dbo','Supplier','ContactName',0,1,0,0,0,11)
INSERT INTO column_data_train VALUES('Dofactory','dbo','Supplier','ContactTitle',0,0,0,0,0,12)
INSERT INTO column_data_train VALUES('Dofactory','dbo','Supplier','Country',0,0,0,0,0,7)
INSERT INTO column_data_train VALUES('Dofactory','dbo','Supplier','Fax',0,0,0,0,0,3)
INSERT INTO column_data_train VALUES('Dofactory','dbo','Supplier','Id',1,0,0,0,0,2)
INSERT INTO column_data_train VALUES('Dofactory','dbo','Supplier','Phone',0,0,0,0,0,5)
INSERT INTO column_data_train VALUES('LahmansBaseballDB','dbo','AllstarFull','gameID',1,0,0,0,0,6)
INSERT INTO column_data_train VALUES('LahmansBaseballDB','dbo','AllstarFull','gameNum',0,0,0,0,0,7)
INSERT INTO column_data_train VALUES('LahmansBaseballDB','dbo','AllstarFull','GP',0,0,0,0,0,2)
INSERT INTO column_data_train VALUES('LahmansBaseballDB','dbo','AllstarFull','lgID',1,0,0,0,0,4)
INSERT INTO column_data_train VALUES('LahmansBaseballDB','dbo','AllstarFull','playerID',1,0,0,0,0,8)
INSERT INTO column_data_train VALUES('LahmansBaseballDB','dbo','AllstarFull','startingPos',0,0,0,0,0,11)
INSERT INTO column_data_train VALUES('LahmansBaseballDB','dbo','AllstarFull','teamID',1,0,0,0,0,6)
INSERT INTO column_data_train VALUES('LahmansBaseballDB','dbo','AllstarFull','yearID',1,0,0,0,0,6)
INSERT INTO column_data_train VALUES('LahmansBaseballDB','dbo','Appearances','G_1b',0,0,0,0,0,4)
INSERT INTO column_data_train VALUES('LahmansBaseballDB','dbo','Appearances','G_2b',0,0,0,0,0,4)
INSERT INTO column_data_train VALUES('LahmansBaseballDB','dbo','Appearances','G_3b',0,0,0,0,0,4)
INSERT INTO column_data_train VALUES('LahmansBaseballDB','dbo','Appearances','G_all',0,0,0,0,0,5)
INSERT INTO column_data_train VALUES('LahmansBaseballDB','dbo','Appearances','G_batting',0,0,0,0,0,9)
INSERT INTO column_data_train VALUES('LahmansBaseballDB','dbo','Appearances','G_c',0,0,0,0,0,3)
INSERT INTO column_data_train VALUES('LahmansBaseballDB','dbo','Appearances','G_cf',0,0,0,0,0,4)
INSERT INTO column_data_train VALUES('LahmansBaseballDB','dbo','Appearances','G_defense',0,0,0,0,0,9)
INSERT INTO column_data_train VALUES('LahmansBaseballDB','dbo','Appearances','G_dh',0,0,0,0,0,4)
INSERT INTO column_data_train VALUES('LahmansBaseballDB','dbo','Appearances','G_lf',0,0,0,0,0,4)
INSERT INTO column_data_train VALUES('LahmansBaseballDB','dbo','Appearances','G_of',0,0,0,0,0,4)
INSERT INTO column_data_train VALUES('LahmansBaseballDB','dbo','Appearances','G_p',0,0,0,0,0,3)
INSERT INTO column_data_train VALUES('LahmansBaseballDB','dbo','Appearances','G_ph',0,0,0,0,0,4)
INSERT INTO column_data_train VALUES('LahmansBaseballDB','dbo','Appearances','G_pr',0,0,0,0,0,4)
INSERT INTO column_data_train VALUES('LahmansBaseballDB','dbo','Appearances','G_rf',0,0,0,0,0,4)
INSERT INTO column_data_train VALUES('LahmansBaseballDB','dbo','Appearances','G_ss',0,0,0,0,0,4)
INSERT INTO column_data_train VALUES('LahmansBaseballDB','dbo','Appearances','GS',0,0,0,0,0,2)
INSERT INTO column_data_train VALUES('LahmansBaseballDB','dbo','Appearances','lgID',1,0,0,0,0,4)
INSERT INTO column_data_train VALUES('LahmansBaseballDB','dbo','Appearances','playerID',1,0,0,0,0,8)
INSERT INTO column_data_train VALUES('LahmansBaseballDB','dbo','Appearances','teamID',1,0,0,0,0,6)
INSERT INTO column_data_train VALUES('LahmansBaseballDB','dbo','Appearances','yearID',1,0,0,0,0,6)
INSERT INTO column_data_train VALUES('LahmansBaseballDB','dbo','AwardsManagers','awardID',1,0,0,0,0,7)
INSERT INTO column_data_train VALUES('LahmansBaseballDB','dbo','AwardsManagers','lgID',1,0,0,0,0,4)
INSERT INTO column_data_train VALUES('LahmansBaseballDB','dbo','AwardsManagers','notes',0,0,0,0,0,5)
INSERT INTO column_data_train VALUES('LahmansBaseballDB','dbo','AwardsManagers','playerID',1,0,0,0,0,8)
INSERT INTO column_data_train VALUES('LahmansBaseballDB','dbo','AwardsManagers','tie',0,0,0,0,0,3)
INSERT INTO column_data_train VALUES('LahmansBaseballDB','dbo','AwardsManagers','yearID',1,0,0,0,0,6)
INSERT INTO column_data_train VALUES('LahmansBaseballDB','dbo','AwardsPlayers','awardID',1,0,0,0,0,7)
INSERT INTO column_data_train VALUES('LahmansBaseballDB','dbo','AwardsPlayers','lgID',1,0,0,0,0,4)
INSERT INTO column_data_train VALUES('LahmansBaseballDB','dbo','AwardsPlayers','notes',0,0,0,0,0,5)
INSERT INTO column_data_train VALUES('LahmansBaseballDB','dbo','AwardsPlayers','playerID',1,0,0,0,0,8)
INSERT INTO column_data_train VALUES('LahmansBaseballDB','dbo','AwardsPlayers','tie',0,0,0,0,0,3)
INSERT INTO column_data_train VALUES('LahmansBaseballDB','dbo','AwardsPlayers','yearID',1,0,0,0,0,6)
INSERT INTO column_data_train VALUES('LahmansBaseballDB','dbo','AwardsShareManagers','awardID',1,0,0,0,0,7)
INSERT INTO column_data_train VALUES('LahmansBaseballDB','dbo','AwardsShareManagers','lgID',1,0,0,0,0,4)
INSERT INTO column_data_train VALUES('LahmansBaseballDB','dbo','AwardsShareManagers','playerID',1,0,0,0,0,8)
INSERT INTO column_data_train VALUES('LahmansBaseballDB','dbo','AwardsShareManagers','pointsMax',0,0,0,0,0,9)
INSERT INTO column_data_train VALUES('LahmansBaseballDB','dbo','AwardsShareManagers','pointsWon',0,0,0,0,0,9)
INSERT INTO column_data_train VALUES('LahmansBaseballDB','dbo','AwardsShareManagers','votesFirst',0,0,0,0,0,10)
INSERT INTO column_data_train VALUES('LahmansBaseballDB','dbo','AwardsShareManagers','yearID',1,0,0,0,0,6)
INSERT INTO column_data_train VALUES('LahmansBaseballDB','dbo','AwardsSharePlayers','awardID',1,0,0,0,0,7)
INSERT INTO column_data_train VALUES('LahmansBaseballDB','dbo','AwardsSharePlayers','lgID',1,0,0,0,0,4)
INSERT INTO column_data_train VALUES('LahmansBaseballDB','dbo','AwardsSharePlayers','playerID',1,0,0,0,0,8)
INSERT INTO column_data_train VALUES('LahmansBaseballDB','dbo','AwardsSharePlayers','pointsMax',0,0,0,0,0,9)
INSERT INTO column_data_train VALUES('LahmansBaseballDB','dbo','AwardsSharePlayers','pointsWon',0,0,0,0,0,9)
INSERT INTO column_data_train VALUES('LahmansBaseballDB','dbo','AwardsSharePlayers','votesFirst',0,0,0,0,0,10)
INSERT INTO column_data_train VALUES('LahmansBaseballDB','dbo','AwardsSharePlayers','yearID',1,0,0,0,0,6)
INSERT INTO column_data_train VALUES('LahmansBaseballDB','dbo','Batting','2B',0,0,0,0,0,2)
INSERT INTO column_data_train VALUES('LahmansBaseballDB','dbo','Batting','3B',0,0,0,0,0,2)
INSERT INTO column_data_train VALUES('LahmansBaseballDB','dbo','Batting','AB',0,0,0,0,0,2)
INSERT INTO column_data_train VALUES('LahmansBaseballDB','dbo','Batting','BB',0,0,0,0,0,2)
INSERT INTO column_data_train VALUES('LahmansBaseballDB','dbo','Batting','CS',0,0,0,0,0,2)
INSERT INTO column_data_train VALUES('LahmansBaseballDB','dbo','Batting','G',0,0,0,0,0,1)
INSERT INTO column_data_train VALUES('LahmansBaseballDB','dbo','Batting','G_batting',0,0,0,0,0,9)
INSERT INTO column_data_train VALUES('LahmansBaseballDB','dbo','Batting','GIDP',1,0,0,0,0,4)
INSERT INTO column_data_train VALUES('LahmansBaseballDB','dbo','Batting','H',0,0,0,0,0,1)
INSERT INTO column_data_train VALUES('LahmansBaseballDB','dbo','Batting','HBP',0,0,0,0,0,3)
INSERT INTO column_data_train VALUES('LahmansBaseballDB','dbo','Batting','HR',0,0,0,0,0,2)
INSERT INTO column_data_train VALUES('LahmansBaseballDB','dbo','Batting','IBB',0,0,0,0,0,3)
INSERT INTO column_data_train VALUES('LahmansBaseballDB','dbo','Batting','lgID',1,0,0,0,0,4)
INSERT INTO column_data_train VALUES('LahmansBaseballDB','dbo','Batting','playerID',1,0,0,0,0,8)
INSERT INTO column_data_train VALUES('LahmansBaseballDB','dbo','Batting','R',0,0,0,0,0,1)
INSERT INTO column_data_train VALUES('LahmansBaseballDB','dbo','Batting','RBI',0,0,0,0,0,3)
INSERT INTO column_data_train VALUES('LahmansBaseballDB','dbo','Batting','SB',0,0,0,0,0,2)
INSERT INTO column_data_train VALUES('LahmansBaseballDB','dbo','Batting','SF',0,0,0,0,0,2)
INSERT INTO column_data_train VALUES('LahmansBaseballDB','dbo','Batting','SH',0,0,0,0,0,2)
INSERT INTO column_data_train VALUES('LahmansBaseballDB','dbo','Batting','SO',0,0,0,0,0,2)
INSERT INTO column_data_train VALUES('LahmansBaseballDB','dbo','Batting','stint',0,0,0,0,0,5)
INSERT INTO column_data_train VALUES('LahmansBaseballDB','dbo','Batting','teamID',1,0,0,0,0,6)
INSERT INTO column_data_train VALUES('LahmansBaseballDB','dbo','Batting','yearID',1,0,0,0,0,6)
INSERT INTO column_data_train VALUES('LahmansBaseballDB','dbo','BattingPost','2B',0,0,0,0,0,2)
INSERT INTO column_data_train VALUES('LahmansBaseballDB','dbo','BattingPost','3B',0,0,0,0,0,2)
INSERT INTO column_data_train VALUES('LahmansBaseballDB','dbo','BattingPost','AB',0,0,0,0,0,2)
INSERT INTO column_data_train VALUES('LahmansBaseballDB','dbo','BattingPost','BB',0,0,0,0,0,2)
INSERT INTO column_data_train VALUES('LahmansBaseballDB','dbo','BattingPost','CS',0,0,0,0,0,2)
INSERT INTO column_data_train VALUES('LahmansBaseballDB','dbo','BattingPost','G',0,0,0,0,0,1)
INSERT INTO column_data_train VALUES('LahmansBaseballDB','dbo','BattingPost','GIDP',1,0,0,0,0,4)
INSERT INTO column_data_train VALUES('LahmansBaseballDB','dbo','BattingPost','H',0,0,0,0,0,1)
INSERT INTO column_data_train VALUES('LahmansBaseballDB','dbo','BattingPost','HBP',0,0,0,0,0,3)
INSERT INTO column_data_train VALUES('LahmansBaseballDB','dbo','BattingPost','HR',0,0,0,0,0,2)
INSERT INTO column_data_train VALUES('LahmansBaseballDB','dbo','BattingPost','IBB',0,0,0,0,0,3)
INSERT INTO column_data_train VALUES('LahmansBaseballDB','dbo','BattingPost','lgID',1,0,0,0,0,4)
INSERT INTO column_data_train VALUES('LahmansBaseballDB','dbo','BattingPost','playerID',1,0,0,0,0,8)
INSERT INTO column_data_train VALUES('LahmansBaseballDB','dbo','BattingPost','R',0,0,0,0,0,1)
INSERT INTO column_data_train VALUES('LahmansBaseballDB','dbo','BattingPost','RBI',0,0,0,0,0,3)
INSERT INTO column_data_train VALUES('LahmansBaseballDB','dbo','BattingPost','round',0,0,0,0,0,5)
INSERT INTO column_data_train VALUES('LahmansBaseballDB','dbo','BattingPost','SB',0,0,0,0,0,2)
INSERT INTO column_data_train VALUES('LahmansBaseballDB','dbo','BattingPost','SF',0,0,0,0,0,2)
INSERT INTO column_data_train VALUES('LahmansBaseballDB','dbo','BattingPost','SH',0,0,0,0,0,2)
INSERT INTO column_data_train VALUES('LahmansBaseballDB','dbo','BattingPost','SO',0,0,0,0,0,2)
INSERT INTO column_data_train VALUES('LahmansBaseballDB','dbo','BattingPost','teamID',1,0,0,0,0,6)
INSERT INTO column_data_train VALUES('LahmansBaseballDB','dbo','BattingPost','yearID',1,0,0,0,0,6)
INSERT INTO column_data_train VALUES('LahmansBaseballDB','dbo','CollegePlaying','playerID',1,0,0,0,0,8)
INSERT INTO column_data_train VALUES('LahmansBaseballDB','dbo','CollegePlaying','schoolID',1,0,0,0,0,8)
INSERT INTO column_data_train VALUES('LahmansBaseballDB','dbo','CollegePlaying','yearID',1,0,0,0,0,6)
INSERT INTO column_data_train VALUES('LahmansBaseballDB','dbo','Fielding','A',0,0,0,0,0,1)
INSERT INTO column_data_train VALUES('LahmansBaseballDB','dbo','Fielding','CS',0,0,0,0,0,2)
INSERT INTO column_data_train VALUES('LahmansBaseballDB','dbo','Fielding','DP',0,0,0,0,0,2)
INSERT INTO column_data_train VALUES('LahmansBaseballDB','dbo','Fielding','E',0,0,0,0,0,1)
INSERT INTO column_data_train VALUES('LahmansBaseballDB','dbo','Fielding','G',0,0,0,0,0,1)
INSERT INTO column_data_train VALUES('LahmansBaseballDB','dbo','Fielding','GS',0,0,0,0,0,2)
INSERT INTO column_data_train VALUES('LahmansBaseballDB','dbo','Fielding','InnOuts',0,0,0,0,0,7)
INSERT INTO column_data_train VALUES('LahmansBaseballDB','dbo','Fielding','lgID',1,0,0,0,0,4)
INSERT INTO column_data_train VALUES('LahmansBaseballDB','dbo','Fielding','PB',0,0,0,0,0,2)
INSERT INTO column_data_train VALUES('LahmansBaseballDB','dbo','Fielding','playerID',1,0,0,0,0,8)
INSERT INTO column_data_train VALUES('LahmansBaseballDB','dbo','Fielding','PO',0,0,0,0,0,2)
INSERT INTO column_data_train VALUES('LahmansBaseballDB','dbo','Fielding','POS',0,0,0,0,0,3)
INSERT INTO column_data_train VALUES('LahmansBaseballDB','dbo','Fielding','SB',0,0,0,0,0,2)
INSERT INTO column_data_train VALUES('LahmansBaseballDB','dbo','Fielding','stint',0,0,0,0,0,5)
INSERT INTO column_data_train VALUES('LahmansBaseballDB','dbo','Fielding','teamID',1,0,0,0,0,6)
INSERT INTO column_data_train VALUES('LahmansBaseballDB','dbo','Fielding','WP',0,0,0,0,0,2)
INSERT INTO column_data_train VALUES('LahmansBaseballDB','dbo','Fielding','yearID',1,0,0,0,0,6)
INSERT INTO column_data_train VALUES('LahmansBaseballDB','dbo','Fielding','ZR',0,0,0,0,0,2)
INSERT INTO column_data_train VALUES('LahmansBaseballDB','dbo','FieldingOF','Gcf',0,0,0,0,0,3)
INSERT INTO column_data_train VALUES('LahmansBaseballDB','dbo','FieldingOF','Glf',0,0,0,0,0,3)
INSERT INTO column_data_train VALUES('LahmansBaseballDB','dbo','FieldingOF','Grf',0,0,0,0,0,3)
INSERT INTO column_data_train VALUES('LahmansBaseballDB','dbo','FieldingOF','playerID',1,0,0,0,0,8)
INSERT INTO column_data_train VALUES('LahmansBaseballDB','dbo','FieldingOF','stint',0,0,0,0,0,5)
INSERT INTO column_data_train VALUES('LahmansBaseballDB','dbo','FieldingOF','yearID',1,0,0,0,0,6)
INSERT INTO column_data_train VALUES('LahmansBaseballDB','dbo','FieldingOFsplit','A',0,0,0,0,0,1)
INSERT INTO column_data_train VALUES('LahmansBaseballDB','dbo','FieldingOFsplit','CS',0,0,0,0,0,2)
INSERT INTO column_data_train VALUES('LahmansBaseballDB','dbo','FieldingOFsplit','DP',0,0,0,0,0,2)
INSERT INTO column_data_train VALUES('LahmansBaseballDB','dbo','FieldingOFsplit','E',0,0,0,0,0,1)
INSERT INTO column_data_train VALUES('LahmansBaseballDB','dbo','FieldingOFsplit','G',0,0,0,0,0,1)
INSERT INTO column_data_train VALUES('LahmansBaseballDB','dbo','FieldingOFsplit','GS',0,0,0,0,0,2)
INSERT INTO column_data_train VALUES('LahmansBaseballDB','dbo','FieldingOFsplit','InnOuts',0,0,0,0,0,7)
INSERT INTO column_data_train VALUES('LahmansBaseballDB','dbo','FieldingOFsplit','lgID',1,0,0,0,0,4)
INSERT INTO column_data_train VALUES('LahmansBaseballDB','dbo','FieldingOFsplit','PB',0,0,0,0,0,2)
INSERT INTO column_data_train VALUES('LahmansBaseballDB','dbo','FieldingOFsplit','playerID',1,0,0,0,0,8)
INSERT INTO column_data_train VALUES('LahmansBaseballDB','dbo','FieldingOFsplit','PO',0,0,0,0,0,2)
INSERT INTO column_data_train VALUES('LahmansBaseballDB','dbo','FieldingOFsplit','POS',0,0,0,0,0,3)
INSERT INTO column_data_train VALUES('LahmansBaseballDB','dbo','FieldingOFsplit','SB',0,0,0,0,0,2)
INSERT INTO column_data_train VALUES('LahmansBaseballDB','dbo','FieldingOFsplit','stint',0,0,0,0,0,5)
INSERT INTO column_data_train VALUES('LahmansBaseballDB','dbo','FieldingOFsplit','teamID',1,0,0,0,0,6)
INSERT INTO column_data_train VALUES('LahmansBaseballDB','dbo','FieldingOFsplit','WP',0,0,0,0,0,2)
INSERT INTO column_data_train VALUES('LahmansBaseballDB','dbo','FieldingOFsplit','yearID',1,0,0,0,0,6)
INSERT INTO column_data_train VALUES('LahmansBaseballDB','dbo','FieldingOFsplit','ZR',0,0,0,0,0,2)
INSERT INTO column_data_train VALUES('LahmansBaseballDB','dbo','FieldingPost','A',0,0,0,0,0,1)
INSERT INTO column_data_train VALUES('LahmansBaseballDB','dbo','FieldingPost','CS',0,0,0,0,0,2)
INSERT INTO column_data_train VALUES('LahmansBaseballDB','dbo','FieldingPost','DP',0,0,0,0,0,2)
INSERT INTO column_data_train VALUES('LahmansBaseballDB','dbo','FieldingPost','E',0,0,0,0,0,1)
INSERT INTO column_data_train VALUES('LahmansBaseballDB','dbo','FieldingPost','G',0,0,0,0,0,1)
INSERT INTO column_data_train VALUES('LahmansBaseballDB','dbo','FieldingPost','GS',0,0,0,0,0,2)
INSERT INTO column_data_train VALUES('LahmansBaseballDB','dbo','FieldingPost','InnOuts',0,0,0,0,0,7)
INSERT INTO column_data_train VALUES('LahmansBaseballDB','dbo','FieldingPost','lgID',1,0,0,0,0,4)
INSERT INTO column_data_train VALUES('LahmansBaseballDB','dbo','FieldingPost','PB',0,0,0,0,0,2)
INSERT INTO column_data_train VALUES('LahmansBaseballDB','dbo','FieldingPost','playerID',1,0,0,0,0,8)
INSERT INTO column_data_train VALUES('LahmansBaseballDB','dbo','FieldingPost','PO',0,0,0,0,0,2)
INSERT INTO column_data_train VALUES('LahmansBaseballDB','dbo','FieldingPost','POS',0,0,0,0,0,3)
INSERT INTO column_data_train VALUES('LahmansBaseballDB','dbo','FieldingPost','round',0,0,0,0,0,5)
INSERT INTO column_data_train VALUES('LahmansBaseballDB','dbo','FieldingPost','SB',0,0,0,0,0,2)
INSERT INTO column_data_train VALUES('LahmansBaseballDB','dbo','FieldingPost','teamID',1,0,0,0,0,6)
INSERT INTO column_data_train VALUES('LahmansBaseballDB','dbo','FieldingPost','TP',0,0,0,0,0,2)
INSERT INTO column_data_train VALUES('LahmansBaseballDB','dbo','FieldingPost','yearID',1,0,0,0,0,6)
INSERT INTO column_data_train VALUES('LahmansBaseballDB','dbo','HallOfFame','ballots',0,0,0,0,0,7)
INSERT INTO column_data_train VALUES('LahmansBaseballDB','dbo','HallOfFame','category',0,0,0,0,0,8)
INSERT INTO column_data_train VALUES('LahmansBaseballDB','dbo','HallOfFame','inducted',0,0,0,0,0,8)
INSERT INTO column_data_train VALUES('LahmansBaseballDB','dbo','HallOfFame','needed',0,0,0,0,0,6)
INSERT INTO column_data_train VALUES('LahmansBaseballDB','dbo','HallOfFame','needed_note',0,0,0,0,0,11)
INSERT INTO column_data_train VALUES('LahmansBaseballDB','dbo','HallOfFame','playerID',1,0,0,0,0,8)
INSERT INTO column_data_train VALUES('LahmansBaseballDB','dbo','HallOfFame','votedBy',0,0,0,0,0,7)
INSERT INTO column_data_train VALUES('LahmansBaseballDB','dbo','HallOfFame','votes',0,0,0,0,0,5)
INSERT INTO column_data_train VALUES('LahmansBaseballDB','dbo','HallOfFame','yearid',1,0,0,0,0,6)
INSERT INTO column_data_train VALUES('LahmansBaseballDB','dbo','HomeGames','attendance',0,0,0,0,0,10)
INSERT INTO column_data_train VALUES('LahmansBaseballDB','dbo','HomeGames','games',0,0,0,0,0,5)
INSERT INTO column_data_train VALUES('LahmansBaseballDB','dbo','HomeGames','leaguekey',0,0,0,0,1,9)
INSERT INTO column_data_train VALUES('LahmansBaseballDB','dbo','HomeGames','openings',0,0,0,0,0,8)
INSERT INTO column_data_train VALUES('LahmansBaseballDB','dbo','HomeGames','parkkey',0,0,0,0,1,7)
INSERT INTO column_data_train VALUES('LahmansBaseballDB','dbo','HomeGames','spanfirst',0,0,0,0,0,9)
INSERT INTO column_data_train VALUES('LahmansBaseballDB','dbo','HomeGames','spanlast',0,0,0,0,0,8)
INSERT INTO column_data_train VALUES('LahmansBaseballDB','dbo','HomeGames','teamkey',0,0,0,0,1,7)
INSERT INTO column_data_train VALUES('LahmansBaseballDB','dbo','HomeGames','yearkey',0,0,0,0,1,7)
INSERT INTO column_data_train VALUES('LahmansBaseballDB','dbo','Managers','G',0,0,0,0,0,1)
INSERT INTO column_data_train VALUES('LahmansBaseballDB','dbo','Managers','inseason',0,0,0,0,0,8)
INSERT INTO column_data_train VALUES('LahmansBaseballDB','dbo','Managers','L',0,0,0,0,0,1)
INSERT INTO column_data_train VALUES('LahmansBaseballDB','dbo','Managers','lgID',1,0,0,0,0,4)
INSERT INTO column_data_train VALUES('LahmansBaseballDB','dbo','Managers','playerID',1,0,0,0,0,8)
INSERT INTO column_data_train VALUES('LahmansBaseballDB','dbo','Managers','plyrMgr',0,0,0,0,0,7)
INSERT INTO column_data_train VALUES('LahmansBaseballDB','dbo','Managers','rank',0,0,0,0,0,4)
INSERT INTO column_data_train VALUES('LahmansBaseballDB','dbo','Managers','teamID',1,0,0,0,0,6)
INSERT INTO column_data_train VALUES('LahmansBaseballDB','dbo','Managers','W',0,0,0,0,0,1)
INSERT INTO column_data_train VALUES('LahmansBaseballDB','dbo','Managers','yearID',1,0,0,0,0,6)
INSERT INTO column_data_train VALUES('LahmansBaseballDB','dbo','ManagersHalf','G',0,0,0,0,0,1)
INSERT INTO column_data_train VALUES('LahmansBaseballDB','dbo','ManagersHalf','half',0,0,0,0,0,4)
INSERT INTO column_data_train VALUES('LahmansBaseballDB','dbo','ManagersHalf','inseason',0,0,0,0,0,8)
INSERT INTO column_data_train VALUES('LahmansBaseballDB','dbo','ManagersHalf','L',0,0,0,0,0,1)
INSERT INTO column_data_train VALUES('LahmansBaseballDB','dbo','ManagersHalf','lgID',1,0,0,0,0,4)
INSERT INTO column_data_train VALUES('LahmansBaseballDB','dbo','ManagersHalf','playerID',1,0,0,0,0,8)
INSERT INTO column_data_train VALUES('LahmansBaseballDB','dbo','ManagersHalf','rank',0,0,0,0,0,4)
INSERT INTO column_data_train VALUES('LahmansBaseballDB','dbo','ManagersHalf','teamID',1,0,0,0,0,6)
INSERT INTO column_data_train VALUES('LahmansBaseballDB','dbo','ManagersHalf','W',0,0,0,0,0,1)
INSERT INTO column_data_train VALUES('LahmansBaseballDB','dbo','ManagersHalf','yearID',1,0,0,0,0,6)
INSERT INTO column_data_train VALUES('LahmansBaseballDB','dbo','Parks','city',0,0,0,0,0,4)
INSERT INTO column_data_train VALUES('LahmansBaseballDB','dbo','Parks','country',0,0,0,0,0,7)
INSERT INTO column_data_train VALUES('LahmansBaseballDB','dbo','Parks','ID',1,0,0,0,0,2)
INSERT INTO column_data_train VALUES('LahmansBaseballDB','dbo','Parks','parkalias',0,0,0,0,0,9)
INSERT INTO column_data_train VALUES('LahmansBaseballDB','dbo','Parks','parkkey',0,0,0,0,1,7)
INSERT INTO column_data_train VALUES('LahmansBaseballDB','dbo','Parks','parkname',0,1,0,0,0,8)
INSERT INTO column_data_train VALUES('LahmansBaseballDB','dbo','Parks','state',0,0,0,0,0,5)
INSERT INTO column_data_train VALUES('LahmansBaseballDB','dbo','People','bats',0,0,0,0,0,4)
INSERT INTO column_data_train VALUES('LahmansBaseballDB','dbo','People','bbrefID',1,0,0,0,0,7)
INSERT INTO column_data_train VALUES('LahmansBaseballDB','dbo','People','birthCity',0,0,0,0,0,9)
INSERT INTO column_data_train VALUES('LahmansBaseballDB','dbo','People','birthCountry',0,0,0,0,0,12)
INSERT INTO column_data_train VALUES('LahmansBaseballDB','dbo','People','birthDay',0,0,0,0,0,8)
INSERT INTO column_data_train VALUES('LahmansBaseballDB','dbo','People','birthMonth',0,0,0,0,0,10)
INSERT INTO column_data_train VALUES('LahmansBaseballDB','dbo','People','birthState',0,0,0,0,0,10)
INSERT INTO column_data_train VALUES('LahmansBaseballDB','dbo','People','birthYear',0,0,0,0,0,9)
INSERT INTO column_data_train VALUES('LahmansBaseballDB','dbo','People','deathCity',0,0,0,0,0,9)
INSERT INTO column_data_train VALUES('LahmansBaseballDB','dbo','People','deathCountry',0,0,0,0,0,12)
INSERT INTO column_data_train VALUES('LahmansBaseballDB','dbo','People','deathDay',0,0,0,0,0,8)
INSERT INTO column_data_train VALUES('LahmansBaseballDB','dbo','People','deathMonth',0,0,0,0,0,10)
INSERT INTO column_data_train VALUES('LahmansBaseballDB','dbo','People','deathState',0,0,0,0,0,10)
INSERT INTO column_data_train VALUES('LahmansBaseballDB','dbo','People','deathYear',0,0,0,0,0,9)
INSERT INTO column_data_train VALUES('LahmansBaseballDB','dbo','People','debut',0,0,0,0,0,5)
INSERT INTO column_data_train VALUES('LahmansBaseballDB','dbo','People','finalGame',0,0,0,0,0,9)
INSERT INTO column_data_train VALUES('LahmansBaseballDB','dbo','People','height',0,0,0,0,0,6)
INSERT INTO column_data_train VALUES('LahmansBaseballDB','dbo','People','nameFirst',0,1,0,0,0,9)
INSERT INTO column_data_train VALUES('LahmansBaseballDB','dbo','People','nameGiven',0,1,0,0,0,9)
INSERT INTO column_data_train VALUES('LahmansBaseballDB','dbo','People','nameLast',0,1,0,0,0,8)
INSERT INTO column_data_train VALUES('LahmansBaseballDB','dbo','People','playerID',1,0,0,0,0,8)
INSERT INTO column_data_train VALUES('LahmansBaseballDB','dbo','People','retroID',1,0,0,0,0,7)
INSERT INTO column_data_train VALUES('LahmansBaseballDB','dbo','People','throws',0,0,0,0,0,6)
INSERT INTO column_data_train VALUES('LahmansBaseballDB','dbo','People','weight',0,0,0,0,0,6)
INSERT INTO column_data_train VALUES('LahmansBaseballDB','dbo','Pitching','BAOpp',0,0,0,0,0,5)
INSERT INTO column_data_train VALUES('LahmansBaseballDB','dbo','Pitching','BB',0,0,0,0,0,2)
INSERT INTO column_data_train VALUES('LahmansBaseballDB','dbo','Pitching','BFP',0,0,0,0,0,3)
INSERT INTO column_data_train VALUES('LahmansBaseballDB','dbo','Pitching','BK',0,0,0,0,0,2)
INSERT INTO column_data_train VALUES('LahmansBaseballDB','dbo','Pitching','CG',0,0,0,0,0,2)
INSERT INTO column_data_train VALUES('LahmansBaseballDB','dbo','Pitching','ER',0,0,0,0,0,2)
INSERT INTO column_data_train VALUES('LahmansBaseballDB','dbo','Pitching','ERA',0,0,0,0,0,3)
INSERT INTO column_data_train VALUES('LahmansBaseballDB','dbo','Pitching','G',0,0,0,0,0,1)
INSERT INTO column_data_train VALUES('LahmansBaseballDB','dbo','Pitching','GF',0,0,0,0,0,2)
INSERT INTO column_data_train VALUES('LahmansBaseballDB','dbo','Pitching','GIDP',1,0,0,0,0,4)
INSERT INTO column_data_train VALUES('LahmansBaseballDB','dbo','Pitching','GS',0,0,0,0,0,2)
INSERT INTO column_data_train VALUES('LahmansBaseballDB','dbo','Pitching','H',0,0,0,0,0,1)
INSERT INTO column_data_train VALUES('LahmansBaseballDB','dbo','Pitching','HBP',0,0,0,0,0,3)
INSERT INTO column_data_train VALUES('LahmansBaseballDB','dbo','Pitching','HR',0,0,0,0,0,2)
INSERT INTO column_data_train VALUES('LahmansBaseballDB','dbo','Pitching','IBB',0,0,0,0,0,3)
INSERT INTO column_data_train VALUES('LahmansBaseballDB','dbo','Pitching','IPouts',0,0,0,0,0,6)
INSERT INTO column_data_train VALUES('LahmansBaseballDB','dbo','Pitching','L',0,0,0,0,0,1)
INSERT INTO column_data_train VALUES('LahmansBaseballDB','dbo','Pitching','lgID',1,0,0,0,0,4)
INSERT INTO column_data_train VALUES('LahmansBaseballDB','dbo','Pitching','playerID',1,0,0,0,0,8)
INSERT INTO column_data_train VALUES('LahmansBaseballDB','dbo','Pitching','R',0,0,0,0,0,1)
INSERT INTO column_data_train VALUES('LahmansBaseballDB','dbo','Pitching','SF',0,0,0,0,0,2)
INSERT INTO column_data_train VALUES('LahmansBaseballDB','dbo','Pitching','SH',0,0,0,0,0,2)
INSERT INTO column_data_train VALUES('LahmansBaseballDB','dbo','Pitching','SHO',0,0,0,0,0,3)
INSERT INTO column_data_train VALUES('LahmansBaseballDB','dbo','Pitching','SO',0,0,0,0,0,2)
INSERT INTO column_data_train VALUES('LahmansBaseballDB','dbo','Pitching','stint',0,0,0,0,0,5)
INSERT INTO column_data_train VALUES('LahmansBaseballDB','dbo','Pitching','SV',0,0,0,0,0,2)
INSERT INTO column_data_train VALUES('LahmansBaseballDB','dbo','Pitching','teamID',1,0,0,0,0,6)
INSERT INTO column_data_train VALUES('LahmansBaseballDB','dbo','Pitching','W',0,0,0,0,0,1)
INSERT INTO column_data_train VALUES('LahmansBaseballDB','dbo','Pitching','WP',0,0,0,0,0,2)
INSERT INTO column_data_train VALUES('LahmansBaseballDB','dbo','Pitching','yearID',1,0,0,0,0,6)
INSERT INTO column_data_train VALUES('LahmansBaseballDB','dbo','PitchingPost','BAOpp',0,0,0,0,0,5)
INSERT INTO column_data_train VALUES('LahmansBaseballDB','dbo','PitchingPost','BB',0,0,0,0,0,2)
INSERT INTO column_data_train VALUES('LahmansBaseballDB','dbo','PitchingPost','BFP',0,0,0,0,0,3)
INSERT INTO column_data_train VALUES('LahmansBaseballDB','dbo','PitchingPost','BK',0,0,0,0,0,2)
INSERT INTO column_data_train VALUES('LahmansBaseballDB','dbo','PitchingPost','CG',0,0,0,0,0,2)
INSERT INTO column_data_train VALUES('LahmansBaseballDB','dbo','PitchingPost','ER',0,0,0,0,0,2)
INSERT INTO column_data_train VALUES('LahmansBaseballDB','dbo','PitchingPost','ERA',0,0,0,0,0,3)
INSERT INTO column_data_train VALUES('LahmansBaseballDB','dbo','PitchingPost','G',0,0,0,0,0,1)
INSERT INTO column_data_train VALUES('LahmansBaseballDB','dbo','PitchingPost','GF',0,0,0,0,0,2)
INSERT INTO column_data_train VALUES('LahmansBaseballDB','dbo','PitchingPost','GIDP',1,0,0,0,0,4)
INSERT INTO column_data_train VALUES('LahmansBaseballDB','dbo','PitchingPost','GS',0,0,0,0,0,2)
INSERT INTO column_data_train VALUES('LahmansBaseballDB','dbo','PitchingPost','H',0,0,0,0,0,1)
INSERT INTO column_data_train VALUES('LahmansBaseballDB','dbo','PitchingPost','HBP',0,0,0,0,0,3)
INSERT INTO column_data_train VALUES('LahmansBaseballDB','dbo','PitchingPost','HR',0,0,0,0,0,2)
INSERT INTO column_data_train VALUES('LahmansBaseballDB','dbo','PitchingPost','IBB',0,0,0,0,0,3)
INSERT INTO column_data_train VALUES('LahmansBaseballDB','dbo','PitchingPost','IPouts',0,0,0,0,0,6)
INSERT INTO column_data_train VALUES('LahmansBaseballDB','dbo','PitchingPost','L',0,0,0,0,0,1)
INSERT INTO column_data_train VALUES('LahmansBaseballDB','dbo','PitchingPost','lgID',1,0,0,0,0,4)
INSERT INTO column_data_train VALUES('LahmansBaseballDB','dbo','PitchingPost','playerID',1,0,0,0,0,8)
INSERT INTO column_data_train VALUES('LahmansBaseballDB','dbo','PitchingPost','R',0,0,0,0,0,1)
INSERT INTO column_data_train VALUES('LahmansBaseballDB','dbo','PitchingPost','round',0,0,0,0,0,5)
INSERT INTO column_data_train VALUES('LahmansBaseballDB','dbo','PitchingPost','SF',0,0,0,0,0,2)
INSERT INTO column_data_train VALUES('LahmansBaseballDB','dbo','PitchingPost','SH',0,0,0,0,0,2)
INSERT INTO column_data_train VALUES('LahmansBaseballDB','dbo','PitchingPost','SHO',0,0,0,0,0,3)
INSERT INTO column_data_train VALUES('LahmansBaseballDB','dbo','PitchingPost','SO',0,0,0,0,0,2)
INSERT INTO column_data_train VALUES('LahmansBaseballDB','dbo','PitchingPost','SV',0,0,0,0,0,2)
INSERT INTO column_data_train VALUES('LahmansBaseballDB','dbo','PitchingPost','teamID',1,0,0,0,0,6)
INSERT INTO column_data_train VALUES('LahmansBaseballDB','dbo','PitchingPost','W',0,0,0,0,0,1)
INSERT INTO column_data_train VALUES('LahmansBaseballDB','dbo','PitchingPost','WP',0,0,0,0,0,2)
INSERT INTO column_data_train VALUES('LahmansBaseballDB','dbo','PitchingPost','yearID',1,0,0,0,0,6)
INSERT INTO column_data_train VALUES('LahmansBaseballDB','dbo','Salaries','lgID',1,0,0,0,0,4)
INSERT INTO column_data_train VALUES('LahmansBaseballDB','dbo','Salaries','playerID',1,0,0,0,0,8)
INSERT INTO column_data_train VALUES('LahmansBaseballDB','dbo','Salaries','salary',0,0,0,0,0,6)
INSERT INTO column_data_train VALUES('LahmansBaseballDB','dbo','Salaries','teamID',1,0,0,0,0,6)
INSERT INTO column_data_train VALUES('LahmansBaseballDB','dbo','Salaries','yearID',1,0,0,0,0,6)
INSERT INTO column_data_train VALUES('LahmansBaseballDB','dbo','Schools','city',0,0,0,0,0,4)
INSERT INTO column_data_train VALUES('LahmansBaseballDB','dbo','Schools','country',0,0,0,0,0,7)
INSERT INTO column_data_train VALUES('LahmansBaseballDB','dbo','Schools','name_full',0,1,0,0,0,9)
INSERT INTO column_data_train VALUES('LahmansBaseballDB','dbo','Schools','schoolID',1,0,0,0,0,8)
INSERT INTO column_data_train VALUES('LahmansBaseballDB','dbo','Schools','state',0,0,0,0,0,5)
INSERT INTO column_data_train VALUES('LahmansBaseballDB','dbo','SeriesPost','lgIDloser',1,0,0,0,0,9)
INSERT INTO column_data_train VALUES('LahmansBaseballDB','dbo','SeriesPost','lgIDwinner',1,0,0,0,0,10)
INSERT INTO column_data_train VALUES('LahmansBaseballDB','dbo','SeriesPost','losses',0,0,0,0,0,6)
INSERT INTO column_data_train VALUES('LahmansBaseballDB','dbo','SeriesPost','round',0,0,0,0,0,5)
INSERT INTO column_data_train VALUES('LahmansBaseballDB','dbo','SeriesPost','teamIDloser',1,0,0,0,0,11)
INSERT INTO column_data_train VALUES('LahmansBaseballDB','dbo','SeriesPost','teamIDwinner',1,0,0,0,0,12)
INSERT INTO column_data_train VALUES('LahmansBaseballDB','dbo','SeriesPost','ties',0,0,0,0,0,4)
INSERT INTO column_data_train VALUES('LahmansBaseballDB','dbo','SeriesPost','wins',0,0,0,0,0,4)
INSERT INTO column_data_train VALUES('LahmansBaseballDB','dbo','SeriesPost','yearID',1,0,0,0,0,6)
INSERT INTO column_data_train VALUES('LahmansBaseballDB','dbo','Teams','2B',0,0,0,0,0,2)
INSERT INTO column_data_train VALUES('LahmansBaseballDB','dbo','Teams','3B',0,0,0,0,0,2)
INSERT INTO column_data_train VALUES('LahmansBaseballDB','dbo','Teams','AB',0,0,0,0,0,2)
INSERT INTO column_data_train VALUES('LahmansBaseballDB','dbo','Teams','attendance',0,0,0,0,0,10)
INSERT INTO column_data_train VALUES('LahmansBaseballDB','dbo','Teams','BB',0,0,0,0,0,2)
INSERT INTO column_data_train VALUES('LahmansBaseballDB','dbo','Teams','BBA',0,0,0,0,0,3)
INSERT INTO column_data_train VALUES('LahmansBaseballDB','dbo','Teams','BPF',0,0,0,0,0,3)
INSERT INTO column_data_train VALUES('LahmansBaseballDB','dbo','Teams','CG',0,0,0,0,0,2)
INSERT INTO column_data_train VALUES('LahmansBaseballDB','dbo','Teams','CS',0,0,0,0,0,2)
INSERT INTO column_data_train VALUES('LahmansBaseballDB','dbo','Teams','divID',1,0,0,0,0,5)
INSERT INTO column_data_train VALUES('LahmansBaseballDB','dbo','Teams','DivWin',0,0,0,0,0,6)
INSERT INTO column_data_train VALUES('LahmansBaseballDB','dbo','Teams','DP',0,0,0,0,0,2)
INSERT INTO column_data_train VALUES('LahmansBaseballDB','dbo','Teams','E',0,0,0,0,0,1)
INSERT INTO column_data_train VALUES('LahmansBaseballDB','dbo','Teams','ER',0,0,0,0,0,2)
INSERT INTO column_data_train VALUES('LahmansBaseballDB','dbo','Teams','ERA',0,0,0,0,0,3)
INSERT INTO column_data_train VALUES('LahmansBaseballDB','dbo','Teams','FP',0,0,0,0,0,2)
INSERT INTO column_data_train VALUES('LahmansBaseballDB','dbo','Teams','franchID',1,0,0,0,0,8)
INSERT INTO column_data_train VALUES('LahmansBaseballDB','dbo','Teams','G',0,0,0,0,0,1)
INSERT INTO column_data_train VALUES('LahmansBaseballDB','dbo','Teams','Ghome',0,0,0,0,0,5)
INSERT INTO column_data_train VALUES('LahmansBaseballDB','dbo','Teams','H',0,0,0,0,0,1)
INSERT INTO column_data_train VALUES('LahmansBaseballDB','dbo','Teams','HA',0,0,0,0,0,2)
INSERT INTO column_data_train VALUES('LahmansBaseballDB','dbo','Teams','HBP',0,0,0,0,0,3)
INSERT INTO column_data_train VALUES('LahmansBaseballDB','dbo','Teams','HR',0,0,0,0,0,2)
INSERT INTO column_data_train VALUES('LahmansBaseballDB','dbo','Teams','HRA',0,0,0,0,0,3)
INSERT INTO column_data_train VALUES('LahmansBaseballDB','dbo','Teams','IPouts',0,0,0,0,0,6)
INSERT INTO column_data_train VALUES('LahmansBaseballDB','dbo','Teams','L',0,0,0,0,0,1)
INSERT INTO column_data_train VALUES('LahmansBaseballDB','dbo','Teams','lgID',1,0,0,0,0,4)
INSERT INTO column_data_train VALUES('LahmansBaseballDB','dbo','Teams','LgWin',0,0,0,0,0,5)
INSERT INTO column_data_train VALUES('LahmansBaseballDB','dbo','Teams','name',0,1,0,0,0,4)
INSERT INTO column_data_train VALUES('LahmansBaseballDB','dbo','Teams','park',0,0,0,0,0,4)
INSERT INTO column_data_train VALUES('LahmansBaseballDB','dbo','Teams','PPF',0,0,0,0,0,3)
INSERT INTO column_data_train VALUES('LahmansBaseballDB','dbo','Teams','R',0,0,0,0,0,1)
INSERT INTO column_data_train VALUES('LahmansBaseballDB','dbo','Teams','RA',0,0,0,0,0,2)
INSERT INTO column_data_train VALUES('LahmansBaseballDB','dbo','Teams','Rank',0,0,0,0,0,4)
INSERT INTO column_data_train VALUES('LahmansBaseballDB','dbo','Teams','SB',0,0,0,0,0,2)
INSERT INTO column_data_train VALUES('LahmansBaseballDB','dbo','Teams','SF',0,0,0,0,0,2)
INSERT INTO column_data_train VALUES('LahmansBaseballDB','dbo','Teams','SHO',0,0,0,0,0,3)
INSERT INTO column_data_train VALUES('LahmansBaseballDB','dbo','Teams','SO',0,0,0,0,0,2)
INSERT INTO column_data_train VALUES('LahmansBaseballDB','dbo','Teams','SOA',0,0,0,0,0,3)
INSERT INTO column_data_train VALUES('LahmansBaseballDB','dbo','Teams','SV',0,0,0,0,0,2)
INSERT INTO column_data_train VALUES('LahmansBaseballDB','dbo','Teams','teamID',1,0,0,0,0,6)
INSERT INTO column_data_train VALUES('LahmansBaseballDB','dbo','Teams','teamIDBR',1,0,0,0,0,8)
INSERT INTO column_data_train VALUES('LahmansBaseballDB','dbo','Teams','teamIDlahman45',1,0,0,0,0,14)
INSERT INTO column_data_train VALUES('LahmansBaseballDB','dbo','Teams','teamIDretro',1,0,0,0,0,11)
INSERT INTO column_data_train VALUES('LahmansBaseballDB','dbo','Teams','W',0,0,0,0,0,1)
INSERT INTO column_data_train VALUES('LahmansBaseballDB','dbo','Teams','WCWin',0,0,0,0,0,5)
INSERT INTO column_data_train VALUES('LahmansBaseballDB','dbo','Teams','WSWin',0,0,0,0,0,5)
INSERT INTO column_data_train VALUES('LahmansBaseballDB','dbo','Teams','yearID',1,0,0,0,0,6)
INSERT INTO column_data_train VALUES('LahmansBaseballDB','dbo','TeamsFranchises','active',0,0,0,0,0,6)
INSERT INTO column_data_train VALUES('LahmansBaseballDB','dbo','TeamsFranchises','franchID',1,0,0,0,0,8)
INSERT INTO column_data_train VALUES('LahmansBaseballDB','dbo','TeamsFranchises','franchName',0,1,0,0,0,10)
INSERT INTO column_data_train VALUES('LahmansBaseballDB','dbo','TeamsFranchises','NAassoc',0,0,0,0,0,7)
INSERT INTO column_data_train VALUES('LahmansBaseballDB','dbo','TeamsHalf','divID',1,0,0,0,0,5)
INSERT INTO column_data_train VALUES('LahmansBaseballDB','dbo','TeamsHalf','DivWin',0,0,0,0,0,6)
INSERT INTO column_data_train VALUES('LahmansBaseballDB','dbo','TeamsHalf','G',0,0,0,0,0,1)
INSERT INTO column_data_train VALUES('LahmansBaseballDB','dbo','TeamsHalf','Half',0,0,0,0,0,4)
INSERT INTO column_data_train VALUES('LahmansBaseballDB','dbo','TeamsHalf','L',0,0,0,0,0,1)
INSERT INTO column_data_train VALUES('LahmansBaseballDB','dbo','TeamsHalf','lgID',1,0,0,0,0,4)
INSERT INTO column_data_train VALUES('LahmansBaseballDB','dbo','TeamsHalf','Rank',0,0,0,0,0,4)
INSERT INTO column_data_train VALUES('LahmansBaseballDB','dbo','TeamsHalf','teamID',1,0,0,0,0,6)
INSERT INTO column_data_train VALUES('LahmansBaseballDB','dbo','TeamsHalf','W',0,0,0,0,0,1)
INSERT INTO column_data_train VALUES('LahmansBaseballDB','dbo','TeamsHalf','yearID',1,0,0,0,0,6)
INSERT INTO column_data_train VALUES('Northwind','dbo','Categories','CategoryID',1,0,0,0,0,10)
INSERT INTO column_data_train VALUES('Northwind','dbo','Categories','CategoryName',0,1,0,0,0,12)
INSERT INTO column_data_train VALUES('Northwind','dbo','Categories','Description',0,0,0,0,0,11)
INSERT INTO column_data_train VALUES('Northwind','dbo','Categories','Picture',0,0,0,0,0,7)
INSERT INTO column_data_train VALUES('Northwind','dbo','CustomerCustomerDemo','CustomerID',1,0,0,0,0,10)
INSERT INTO column_data_train VALUES('Northwind','dbo','CustomerCustomerDemo','CustomerTypeID',1,0,0,0,0,14)
INSERT INTO column_data_train VALUES('Northwind','dbo','CustomerDemographics','CustomerDesc',0,0,0,0,0,12)
INSERT INTO column_data_train VALUES('Northwind','dbo','CustomerDemographics','CustomerTypeID',1,0,0,0,0,14)
INSERT INTO column_data_train VALUES('Northwind','dbo','Customers','Address',0,0,0,0,0,7)
INSERT INTO column_data_train VALUES('Northwind','dbo','Customers','City',0,0,0,0,0,4)
INSERT INTO column_data_train VALUES('Northwind','dbo','Customers','CompanyName',0,1,0,0,0,11)
INSERT INTO column_data_train VALUES('Northwind','dbo','Customers','ContactName',0,1,0,0,0,11)
INSERT INTO column_data_train VALUES('Northwind','dbo','Customers','ContactTitle',0,0,0,0,0,12)
INSERT INTO column_data_train VALUES('Northwind','dbo','Customers','Country',0,0,0,0,0,7)
INSERT INTO column_data_train VALUES('Northwind','dbo','Customers','CustomerID',1,0,0,0,0,10)
INSERT INTO column_data_train VALUES('Northwind','dbo','Customers','Fax',0,0,0,0,0,3)
INSERT INTO column_data_train VALUES('Northwind','dbo','Customers','Phone',0,0,0,0,0,5)
INSERT INTO column_data_train VALUES('Northwind','dbo','Customers','PostalCode',0,0,0,0,0,10)
INSERT INTO column_data_train VALUES('Northwind','dbo','Customers','Region',0,0,0,0,0,6)
INSERT INTO column_data_train VALUES('Northwind','dbo','Employees','Address',0,0,0,0,0,7)
INSERT INTO column_data_train VALUES('Northwind','dbo','Employees','BirthDate',0,0,0,0,0,9)
INSERT INTO column_data_train VALUES('Northwind','dbo','Employees','City',0,0,0,0,0,4)
INSERT INTO column_data_train VALUES('Northwind','dbo','Employees','Country',0,0,0,0,0,7)
INSERT INTO column_data_train VALUES('Northwind','dbo','Employees','EmployeeID',1,0,0,0,0,10)
INSERT INTO column_data_train VALUES('Northwind','dbo','Employees','Extension',0,0,0,0,0,9)
INSERT INTO column_data_train VALUES('Northwind','dbo','Employees','FirstName',0,1,0,0,0,9)
INSERT INTO column_data_train VALUES('Northwind','dbo','Employees','HireDate',0,0,0,0,0,8)
INSERT INTO column_data_train VALUES('Northwind','dbo','Employees','HomePhone',0,0,0,0,0,9)
INSERT INTO column_data_train VALUES('Northwind','dbo','Employees','LastName',0,1,0,0,0,8)
INSERT INTO column_data_train VALUES('Northwind','dbo','Employees','Notes',0,0,0,0,0,5)
INSERT INTO column_data_train VALUES('Northwind','dbo','Employees','Photo',0,0,0,0,0,5)
INSERT INTO column_data_train VALUES('Northwind','dbo','Employees','PhotoPath',0,0,0,0,0,9)
INSERT INTO column_data_train VALUES('Northwind','dbo','Employees','PostalCode',0,0,0,0,0,10)
INSERT INTO column_data_train VALUES('Northwind','dbo','Employees','Region',0,0,0,0,0,6)
INSERT INTO column_data_train VALUES('Northwind','dbo','Employees','ReportsTo',0,0,0,0,0,9)
INSERT INTO column_data_train VALUES('Northwind','dbo','Employees','Title',0,0,0,0,0,5)
INSERT INTO column_data_train VALUES('Northwind','dbo','Employees','TitleOfCourtesy',0,0,0,0,0,15)
INSERT INTO column_data_train VALUES('Northwind','dbo','EmployeeTerritories','EmployeeID',1,0,0,0,0,10)
INSERT INTO column_data_train VALUES('Northwind','dbo','EmployeeTerritories','TerritoryID',1,0,0,0,0,11)
INSERT INTO column_data_train VALUES('Northwind','dbo','Order Details','Discount',0,0,0,0,0,8)
INSERT INTO column_data_train VALUES('Northwind','dbo','Order Details','OrderID',1,0,0,0,0,7)
INSERT INTO column_data_train VALUES('Northwind','dbo','Order Details','ProductID',1,0,0,0,0,9)
INSERT INTO column_data_train VALUES('Northwind','dbo','Order Details','Quantity',0,0,0,0,0,8)
INSERT INTO column_data_train VALUES('Northwind','dbo','Order Details','UnitPrice',0,0,0,0,0,9)
INSERT INTO column_data_train VALUES('Northwind','dbo','Orders','CustomerID',1,0,0,0,0,10)
INSERT INTO column_data_train VALUES('Northwind','dbo','Orders','EmployeeID',1,0,0,0,0,10)
INSERT INTO column_data_train VALUES('Northwind','dbo','Orders','Freight',0,0,0,0,0,7)
INSERT INTO column_data_train VALUES('Northwind','dbo','Orders','OrderDate',0,0,0,0,0,9)
INSERT INTO column_data_train VALUES('Northwind','dbo','Orders','OrderID',1,0,0,0,0,7)
INSERT INTO column_data_train VALUES('Northwind','dbo','Orders','RequiredDate',0,0,0,0,0,12)
INSERT INTO column_data_train VALUES('Northwind','dbo','Orders','ShipAddress',0,0,0,0,0,11)
INSERT INTO column_data_train VALUES('Northwind','dbo','Orders','ShipCity',0,0,0,0,0,8)
INSERT INTO column_data_train VALUES('Northwind','dbo','Orders','ShipCountry',0,0,0,0,0,11)
INSERT INTO column_data_train VALUES('Northwind','dbo','Orders','ShipName',0,1,0,0,0,8)
INSERT INTO column_data_train VALUES('Northwind','dbo','Orders','ShippedDate',0,0,0,0,0,11)
INSERT INTO column_data_train VALUES('Northwind','dbo','Orders','ShipPostalCode',0,0,0,0,0,14)
INSERT INTO column_data_train VALUES('Northwind','dbo','Orders','ShipRegion',0,0,0,0,0,10)
INSERT INTO column_data_train VALUES('Northwind','dbo','Orders','ShipVia',0,0,0,0,0,7)
INSERT INTO column_data_train VALUES('Northwind','dbo','Products','CategoryID',1,0,0,0,0,10)
INSERT INTO column_data_train VALUES('Northwind','dbo','Products','Discontinued',0,0,0,0,0,12)
INSERT INTO column_data_train VALUES('Northwind','dbo','Products','ProductID',1,0,0,0,0,9)
INSERT INTO column_data_train VALUES('Northwind','dbo','Products','ProductName',0,1,0,0,0,11)
INSERT INTO column_data_train VALUES('Northwind','dbo','Products','QuantityPerUnit',0,0,0,0,0,15)
INSERT INTO column_data_train VALUES('Northwind','dbo','Products','ReorderLevel',0,0,0,0,0,12)
INSERT INTO column_data_train VALUES('Northwind','dbo','Products','SupplierID',1,0,0,0,0,10)
INSERT INTO column_data_train VALUES('Northwind','dbo','Products','UnitPrice',0,0,0,0,0,9)
INSERT INTO column_data_train VALUES('Northwind','dbo','Products','UnitsInStock',0,0,0,0,0,12)
INSERT INTO column_data_train VALUES('Northwind','dbo','Products','UnitsOnOrder',0,0,0,0,0,12)
INSERT INTO column_data_train VALUES('Northwind','dbo','Region','RegionDescription',0,0,0,0,0,17)
INSERT INTO column_data_train VALUES('Northwind','dbo','Region','RegionID',1,0,0,0,0,8)
INSERT INTO column_data_train VALUES('Northwind','dbo','Shippers','CompanyName',0,1,0,0,0,11)
INSERT INTO column_data_train VALUES('Northwind','dbo','Shippers','Phone',0,0,0,0,0,5)
INSERT INTO column_data_train VALUES('Northwind','dbo','Shippers','ShipperID',1,0,0,0,0,9)
INSERT INTO column_data_train VALUES('Northwind','dbo','Suppliers','Address',0,0,0,0,0,7)
INSERT INTO column_data_train VALUES('Northwind','dbo','Suppliers','City',0,0,0,0,0,4)
INSERT INTO column_data_train VALUES('Northwind','dbo','Suppliers','CompanyName',0,1,0,0,0,11)
INSERT INTO column_data_train VALUES('Northwind','dbo','Suppliers','ContactName',0,1,0,0,0,11)
INSERT INTO column_data_train VALUES('Northwind','dbo','Suppliers','ContactTitle',0,0,0,0,0,12)
INSERT INTO column_data_train VALUES('Northwind','dbo','Suppliers','Country',0,0,0,0,0,7)
INSERT INTO column_data_train VALUES('Northwind','dbo','Suppliers','Fax',0,0,0,0,0,3)
INSERT INTO column_data_train VALUES('Northwind','dbo','Suppliers','HomePage',0,0,0,0,0,8)
INSERT INTO column_data_train VALUES('Northwind','dbo','Suppliers','Phone',0,0,0,0,0,5)
INSERT INTO column_data_train VALUES('Northwind','dbo','Suppliers','PostalCode',0,0,0,0,0,10)
INSERT INTO column_data_train VALUES('Northwind','dbo','Suppliers','Region',0,0,0,0,0,6)
INSERT INTO column_data_train VALUES('Northwind','dbo','Suppliers','SupplierID',1,0,0,0,0,10)
INSERT INTO column_data_train VALUES('Northwind','dbo','Territories','RegionID',1,0,0,0,0,8)
INSERT INTO column_data_train VALUES('Northwind','dbo','Territories','TerritoryDescription',0,0,0,0,0,20)
INSERT INTO column_data_train VALUES('Northwind','dbo','Territories','TerritoryID',1,0,0,0,0,11)
INSERT INTO column_data_train VALUES('NYCTaxi_Sample','dbo','nyc_taxi_models','model',0,0,0,0,0,5)
INSERT INTO column_data_train VALUES('NYCTaxi_Sample','dbo','nyc_taxi_models','name',0,1,0,0,0,4)
INSERT INTO column_data_train VALUES('NYCTaxi_Sample','dbo','nyctaxi_sample','dropoff_datetime',0,0,0,0,0,16)
INSERT INTO column_data_train VALUES('NYCTaxi_Sample','dbo','nyctaxi_sample','dropoff_latitude',0,0,0,0,0,16)
INSERT INTO column_data_train VALUES('NYCTaxi_Sample','dbo','nyctaxi_sample','dropoff_longitude',0,0,0,0,0,17)
INSERT INTO column_data_train VALUES('NYCTaxi_Sample','dbo','nyctaxi_sample','fare_amount',0,0,0,0,0,11)
INSERT INTO column_data_train VALUES('NYCTaxi_Sample','dbo','nyctaxi_sample','hack_license',0,0,0,0,0,12)
INSERT INTO column_data_train VALUES('NYCTaxi_Sample','dbo','nyctaxi_sample','medallion',0,0,0,0,0,9)
INSERT INTO column_data_train VALUES('NYCTaxi_Sample','dbo','nyctaxi_sample','mta_tax',0,0,0,0,0,7)
INSERT INTO column_data_train VALUES('NYCTaxi_Sample','dbo','nyctaxi_sample','passenger_count',0,0,0,0,0,15)
INSERT INTO column_data_train VALUES('NYCTaxi_Sample','dbo','nyctaxi_sample','payment_type',0,0,0,0,0,12)
INSERT INTO column_data_train VALUES('NYCTaxi_Sample','dbo','nyctaxi_sample','pickup_datetime',0,0,0,0,0,15)
INSERT INTO column_data_train VALUES('NYCTaxi_Sample','dbo','nyctaxi_sample','pickup_latitude',0,0,0,0,0,15)
INSERT INTO column_data_train VALUES('NYCTaxi_Sample','dbo','nyctaxi_sample','pickup_longitude',0,0,0,0,0,16)
INSERT INTO column_data_train VALUES('NYCTaxi_Sample','dbo','nyctaxi_sample','rate_code',0,0,0,0,0,9)
INSERT INTO column_data_train VALUES('NYCTaxi_Sample','dbo','nyctaxi_sample','store_and_fwd_flag',0,0,0,0,0,18)
INSERT INTO column_data_train VALUES('NYCTaxi_Sample','dbo','nyctaxi_sample','surcharge',0,0,0,0,0,9)
INSERT INTO column_data_train VALUES('NYCTaxi_Sample','dbo','nyctaxi_sample','tip_amount',0,0,0,0,0,10)
INSERT INTO column_data_train VALUES('NYCTaxi_Sample','dbo','nyctaxi_sample','tip_class',0,0,0,0,0,9)
INSERT INTO column_data_train VALUES('NYCTaxi_Sample','dbo','nyctaxi_sample','tipped',0,0,0,0,0,6)
INSERT INTO column_data_train VALUES('NYCTaxi_Sample','dbo','nyctaxi_sample','tolls_amount',0,0,0,0,0,12)
INSERT INTO column_data_train VALUES('NYCTaxi_Sample','dbo','nyctaxi_sample','total_amount',0,0,0,0,0,12)
INSERT INTO column_data_train VALUES('NYCTaxi_Sample','dbo','nyctaxi_sample','trip_distance',0,0,0,0,0,13)
INSERT INTO column_data_train VALUES('NYCTaxi_Sample','dbo','nyctaxi_sample','trip_time_in_secs',0,0,0,0,0,17)
INSERT INTO column_data_train VALUES('NYCTaxi_Sample','dbo','nyctaxi_sample','vendor_id',1,0,0,0,0,9)
INSERT INTO column_data_train VALUES('pubs','dbo','authors','address',0,0,0,0,0,7)
INSERT INTO column_data_train VALUES('pubs','dbo','authors','au_fname',0,1,0,0,0,8)
INSERT INTO column_data_train VALUES('pubs','dbo','authors','au_id',1,0,0,0,0,5)
INSERT INTO column_data_train VALUES('pubs','dbo','authors','au_lname',0,1,0,0,0,8)
INSERT INTO column_data_train VALUES('pubs','dbo','authors','city',0,0,0,0,0,4)
INSERT INTO column_data_train VALUES('pubs','dbo','authors','contract',0,0,0,0,0,8)
INSERT INTO column_data_train VALUES('pubs','dbo','authors','phone',0,0,0,0,0,5)
INSERT INTO column_data_train VALUES('pubs','dbo','authors','state',0,0,0,0,0,5)
INSERT INTO column_data_train VALUES('pubs','dbo','authors','zip',0,0,0,0,0,3)
INSERT INTO column_data_train VALUES('pubs','dbo','discounts','discount',0,0,0,0,0,8)
INSERT INTO column_data_train VALUES('pubs','dbo','discounts','discounttype',0,0,0,0,0,12)
INSERT INTO column_data_train VALUES('pubs','dbo','discounts','highqty',0,0,0,0,0,7)
INSERT INTO column_data_train VALUES('pubs','dbo','discounts','lowqty',0,0,0,0,0,6)
INSERT INTO column_data_train VALUES('pubs','dbo','discounts','stor_id',1,0,0,0,0,7)
INSERT INTO column_data_train VALUES('pubs','dbo','employee','emp_id',1,0,0,0,0,6)
INSERT INTO column_data_train VALUES('pubs','dbo','employee','fname',0,1,0,0,0,5)
INSERT INTO column_data_train VALUES('pubs','dbo','employee','hire_date',0,0,0,0,0,9)
INSERT INTO column_data_train VALUES('pubs','dbo','employee','job_id',1,0,0,0,0,6)
INSERT INTO column_data_train VALUES('pubs','dbo','employee','job_lvl',0,0,0,0,0,7)
INSERT INTO column_data_train VALUES('pubs','dbo','employee','lname',0,1,0,0,0,5)
INSERT INTO column_data_train VALUES('pubs','dbo','employee','minit',0,0,0,0,0,5)
INSERT INTO column_data_train VALUES('pubs','dbo','employee','pub_id',1,0,0,0,0,6)
INSERT INTO column_data_train VALUES('pubs','dbo','jobs','job_desc',0,0,0,0,0,8)
INSERT INTO column_data_train VALUES('pubs','dbo','jobs','job_id',1,0,0,0,0,6)
INSERT INTO column_data_train VALUES('pubs','dbo','jobs','max_lvl',0,0,0,0,0,7)
INSERT INTO column_data_train VALUES('pubs','dbo','jobs','min_lvl',0,0,0,0,0,7)
INSERT INTO column_data_train VALUES('pubs','dbo','pub_info','logo',0,0,0,0,0,4)
INSERT INTO column_data_train VALUES('pubs','dbo','pub_info','pr_info',0,0,0,0,0,7)
INSERT INTO column_data_train VALUES('pubs','dbo','pub_info','pub_id',1,0,0,0,0,6)
INSERT INTO column_data_train VALUES('pubs','dbo','publishers','city',0,0,0,0,0,4)
INSERT INTO column_data_train VALUES('pubs','dbo','publishers','country',0,0,0,0,0,7)
INSERT INTO column_data_train VALUES('pubs','dbo','publishers','pub_id',1,0,0,0,0,6)
INSERT INTO column_data_train VALUES('pubs','dbo','publishers','pub_name',0,1,0,0,0,8)
INSERT INTO column_data_train VALUES('pubs','dbo','publishers','state',0,0,0,0,0,5)
INSERT INTO column_data_train VALUES('pubs','dbo','roysched','hirange',0,0,0,0,0,7)
INSERT INTO column_data_train VALUES('pubs','dbo','roysched','lorange',0,0,0,0,0,7)
INSERT INTO column_data_train VALUES('pubs','dbo','roysched','royalty',0,0,0,0,0,7)
INSERT INTO column_data_train VALUES('pubs','dbo','roysched','title_id',1,0,0,0,0,8)
INSERT INTO column_data_train VALUES('pubs','dbo','sales','ord_date',0,0,0,0,0,8)
INSERT INTO column_data_train VALUES('pubs','dbo','sales','ord_num',0,0,0,0,0,7)
INSERT INTO column_data_train VALUES('pubs','dbo','sales','payterms',0,0,0,0,0,8)
INSERT INTO column_data_train VALUES('pubs','dbo','sales','qty',0,0,0,0,0,3)
INSERT INTO column_data_train VALUES('pubs','dbo','sales','stor_id',1,0,0,0,0,7)
INSERT INTO column_data_train VALUES('pubs','dbo','sales','title_id',1,0,0,0,0,8)
INSERT INTO column_data_train VALUES('pubs','dbo','stores','city',0,0,0,0,0,4)
INSERT INTO column_data_train VALUES('pubs','dbo','stores','state',0,0,0,0,0,5)
INSERT INTO column_data_train VALUES('pubs','dbo','stores','stor_address',0,0,0,0,0,12)
INSERT INTO column_data_train VALUES('pubs','dbo','stores','stor_id',1,0,0,0,0,7)
INSERT INTO column_data_train VALUES('pubs','dbo','stores','stor_name',0,1,0,0,0,9)
INSERT INTO column_data_train VALUES('pubs','dbo','stores','zip',0,0,0,0,0,3)
INSERT INTO column_data_train VALUES('pubs','dbo','titleauthor','au_id',1,0,0,0,0,5)
INSERT INTO column_data_train VALUES('pubs','dbo','titleauthor','au_ord',0,0,0,0,0,6)
INSERT INTO column_data_train VALUES('pubs','dbo','titleauthor','royaltyper',0,0,0,0,0,10)
INSERT INTO column_data_train VALUES('pubs','dbo','titleauthor','title_id',1,0,0,0,0,8)
INSERT INTO column_data_train VALUES('pubs','dbo','titles','advance',0,0,0,0,0,7)
INSERT INTO column_data_train VALUES('pubs','dbo','titles','notes',0,0,0,0,0,5)
INSERT INTO column_data_train VALUES('pubs','dbo','titles','price',0,0,0,0,0,5)
INSERT INTO column_data_train VALUES('pubs','dbo','titles','pub_id',1,0,0,0,0,6)
INSERT INTO column_data_train VALUES('pubs','dbo','titles','pubdate',0,0,0,0,0,7)
INSERT INTO column_data_train VALUES('pubs','dbo','titles','royalty',0,0,0,0,0,7)
INSERT INTO column_data_train VALUES('pubs','dbo','titles','title',0,0,0,0,0,5)
INSERT INTO column_data_train VALUES('pubs','dbo','titles','title_id',1,0,0,0,0,8)
INSERT INTO column_data_train VALUES('pubs','dbo','titles','type',0,0,0,0,0,4)
INSERT INTO column_data_train VALUES('pubs','dbo','titles','ytd_sales',0,0,0,0,0,9)
INSERT INTO column_data_train VALUES('salesdb','dbo','Customers','CustomerID',1,0,0,0,0,10)
INSERT INTO column_data_train VALUES('salesdb','dbo','Customers','FirstName',0,1,0,0,0,9)
INSERT INTO column_data_train VALUES('salesdb','dbo','Customers','LastName',0,1,0,0,0,8)
INSERT INTO column_data_train VALUES('salesdb','dbo','Customers','MiddleInitial',1,0,0,0,0,13)
INSERT INTO column_data_train VALUES('salesdb','dbo','Employees','EmployeeID',1,0,0,0,0,10)
INSERT INTO column_data_train VALUES('salesdb','dbo','Employees','FirstName',0,1,0,0,0,9)
INSERT INTO column_data_train VALUES('salesdb','dbo','Employees','LastName',0,1,0,0,0,8)
INSERT INTO column_data_train VALUES('salesdb','dbo','Employees','MiddleInitial',1,0,0,0,0,13)
INSERT INTO column_data_train VALUES('salesdb','dbo','Products','Name',0,1,0,0,0,4)
INSERT INTO column_data_train VALUES('salesdb','dbo','Products','Price',0,0,0,0,0,5)
INSERT INTO column_data_train VALUES('salesdb','dbo','Products','ProductID',1,0,0,0,0,9)
INSERT INTO column_data_train VALUES('salesdb','dbo','Sales','CustomerID',1,0,0,0,0,10)
INSERT INTO column_data_train VALUES('salesdb','dbo','Sales','ProductID',1,0,0,0,0,9)
INSERT INTO column_data_train VALUES('salesdb','dbo','Sales','Quantity',0,0,0,0,0,8)
INSERT INTO column_data_train VALUES('salesdb','dbo','Sales','SalesID',1,0,0,0,0,7)
INSERT INTO column_data_train VALUES('salesdb','dbo','Sales','SalesPersonID',1,0,0,0,0,13)
INSERT INTO column_data_train VALUES('School','dbo','Course','CourseID',1,0,0,0,0,8)
INSERT INTO column_data_train VALUES('School','dbo','Course','Credits',0,0,0,0,0,7)
INSERT INTO column_data_train VALUES('School','dbo','Course','DepartmentID',1,0,0,0,0,12)
INSERT INTO column_data_train VALUES('School','dbo','Course','Title',0,0,0,0,0,5)
INSERT INTO column_data_train VALUES('School','dbo','CourseInstructor','CourseID',1,0,0,0,0,8)
INSERT INTO column_data_train VALUES('School','dbo','CourseInstructor','PersonID',1,0,0,0,0,8)
INSERT INTO column_data_train VALUES('School','dbo','Department','Administrator',0,0,0,0,0,13)
INSERT INTO column_data_train VALUES('School','dbo','Department','Budget',0,0,0,0,0,6)
INSERT INTO column_data_train VALUES('School','dbo','Department','DepartmentID',1,0,0,0,0,12)
INSERT INTO column_data_train VALUES('School','dbo','Department','Name',0,1,0,0,0,4)
INSERT INTO column_data_train VALUES('School','dbo','Department','StartDate',0,0,0,0,0,9)
INSERT INTO column_data_train VALUES('School','dbo','OfficeAssignment','InstructorID',1,0,0,0,0,12)
INSERT INTO column_data_train VALUES('School','dbo','OfficeAssignment','Location',0,0,0,0,0,8)
INSERT INTO column_data_train VALUES('School','dbo','OfficeAssignment','Timestamp',0,0,0,0,0,9)
INSERT INTO column_data_train VALUES('School','dbo','OnlineCourse','CourseID',1,0,0,0,0,8)
INSERT INTO column_data_train VALUES('School','dbo','OnlineCourse','URL',0,0,0,0,0,3)
INSERT INTO column_data_train VALUES('School','dbo','OnsiteCourse','CourseID',1,0,0,0,0,8)
INSERT INTO column_data_train VALUES('School','dbo','OnsiteCourse','Days',0,0,0,0,0,4)
INSERT INTO column_data_train VALUES('School','dbo','OnsiteCourse','Location',0,0,0,0,0,8)
INSERT INTO column_data_train VALUES('School','dbo','OnsiteCourse','Time',0,0,0,0,0,4)
INSERT INTO column_data_train VALUES('School','dbo','Person','Discriminator',0,0,0,0,0,13)
INSERT INTO column_data_train VALUES('School','dbo','Person','EnrollmentDate',0,0,0,0,0,14)
INSERT INTO column_data_train VALUES('School','dbo','Person','FirstName',0,1,0,0,0,9)
INSERT INTO column_data_train VALUES('School','dbo','Person','HireDate',0,0,0,0,0,8)
INSERT INTO column_data_train VALUES('School','dbo','Person','LastName',0,1,0,0,0,8)
INSERT INTO column_data_train VALUES('School','dbo','Person','PersonID',1,0,0,0,0,8)
INSERT INTO column_data_train VALUES('School','dbo','StudentGrade','CourseID',1,0,0,0,0,8)
INSERT INTO column_data_train VALUES('School','dbo','StudentGrade','EnrollmentID',1,0,0,0,0,12)
INSERT INTO column_data_train VALUES('School','dbo','StudentGrade','Grade',0,0,0,0,0,5)
INSERT INTO column_data_train VALUES('School','dbo','StudentGrade','StudentID',1,0,0,0,0,9)
INSERT INTO column_data_train VALUES('WideWorldImportersDW','Dimension','City','City',0,0,0,0,0,4)
INSERT INTO column_data_train VALUES('WideWorldImportersDW','Dimension','City','City Key',0,0,0,0,1,8)
INSERT INTO column_data_train VALUES('WideWorldImportersDW','Dimension','City','Continent',0,0,0,0,0,9)
INSERT INTO column_data_train VALUES('WideWorldImportersDW','Dimension','City','Country',0,0,0,0,0,7)
INSERT INTO column_data_train VALUES('WideWorldImportersDW','Dimension','City','Latest Recorded Population',0,0,0,0,0,26)
INSERT INTO column_data_train VALUES('WideWorldImportersDW','Dimension','City','Lineage Key',0,0,0,0,1,11)
INSERT INTO column_data_train VALUES('WideWorldImportersDW','Dimension','City','Location',0,0,0,0,0,8)
INSERT INTO column_data_train VALUES('WideWorldImportersDW','Dimension','City','Region',0,0,0,0,0,6)
INSERT INTO column_data_train VALUES('WideWorldImportersDW','Dimension','City','Sales Territory',0,0,0,0,0,15)
INSERT INTO column_data_train VALUES('WideWorldImportersDW','Dimension','City','State Province',0,0,0,0,0,14)
INSERT INTO column_data_train VALUES('WideWorldImportersDW','Dimension','City','Subregion',0,0,0,0,0,9)
INSERT INTO column_data_train VALUES('WideWorldImportersDW','Dimension','City','Valid From',1,0,0,0,0,10)
INSERT INTO column_data_train VALUES('WideWorldImportersDW','Dimension','City','Valid To',1,0,0,0,0,8)
INSERT INTO column_data_train VALUES('WideWorldImportersDW','Dimension','City','WWI City ID',1,0,0,0,0,11)
INSERT INTO column_data_train VALUES('WideWorldImportersDW','Dimension','Customer','Bill To Customer',0,0,0,0,0,16)
INSERT INTO column_data_train VALUES('WideWorldImportersDW','Dimension','Customer','Buying Group',0,0,0,0,0,12)
INSERT INTO column_data_train VALUES('WideWorldImportersDW','Dimension','Customer','Category',0,0,0,0,0,8)
INSERT INTO column_data_train VALUES('WideWorldImportersDW','Dimension','Customer','Customer',0,0,0,0,0,8)
INSERT INTO column_data_train VALUES('WideWorldImportersDW','Dimension','Customer','Customer Key',0,0,0,0,1,12)
INSERT INTO column_data_train VALUES('WideWorldImportersDW','Dimension','Customer','Lineage Key',0,0,0,0,1,11)
INSERT INTO column_data_train VALUES('WideWorldImportersDW','Dimension','Customer','Postal Code',0,0,0,0,0,11)
INSERT INTO column_data_train VALUES('WideWorldImportersDW','Dimension','Customer','Primary Contact',0,0,0,0,0,15)
INSERT INTO column_data_train VALUES('WideWorldImportersDW','Dimension','Customer','Valid From',1,0,0,0,0,10)
INSERT INTO column_data_train VALUES('WideWorldImportersDW','Dimension','Customer','Valid To',1,0,0,0,0,8)
INSERT INTO column_data_train VALUES('WideWorldImportersDW','Dimension','Customer','WWI Customer ID',1,0,0,0,0,15)
INSERT INTO column_data_train VALUES('WideWorldImportersDW','Dimension','Date','Calendar Month Label',0,0,0,0,0,20)
INSERT INTO column_data_train VALUES('WideWorldImportersDW','Dimension','Date','Calendar Month Number',0,0,1,0,0,21)
INSERT INTO column_data_train VALUES('WideWorldImportersDW','Dimension','Date','Calendar Year',0,0,0,0,0,13)
INSERT INTO column_data_train VALUES('WideWorldImportersDW','Dimension','Date','Calendar Year Label',0,0,0,0,0,19)
INSERT INTO column_data_train VALUES('WideWorldImportersDW','Dimension','Date','Date',0,0,0,0,0,4)
INSERT INTO column_data_train VALUES('WideWorldImportersDW','Dimension','Date','Day',0,0,0,0,0,3)
INSERT INTO column_data_train VALUES('WideWorldImportersDW','Dimension','Date','Day Number',0,0,1,0,0,10)
INSERT INTO column_data_train VALUES('WideWorldImportersDW','Dimension','Date','Fiscal Month Label',0,0,0,0,0,18)
INSERT INTO column_data_train VALUES('WideWorldImportersDW','Dimension','Date','Fiscal Month Number',0,0,1,0,0,19)
INSERT INTO column_data_train VALUES('WideWorldImportersDW','Dimension','Date','Fiscal Year',0,0,0,0,0,11)
INSERT INTO column_data_train VALUES('WideWorldImportersDW','Dimension','Date','Fiscal Year Label',0,0,0,0,0,17)
INSERT INTO column_data_train VALUES('WideWorldImportersDW','Dimension','Date','ISO Week Number',0,0,1,0,0,15)
INSERT INTO column_data_train VALUES('WideWorldImportersDW','Dimension','Date','Month',0,0,0,0,0,5)
INSERT INTO column_data_train VALUES('WideWorldImportersDW','Dimension','Date','Short Month',0,0,0,0,0,11)
INSERT INTO column_data_train VALUES('WideWorldImportersDW','Dimension','Employee','Employee',0,0,0,0,0,8)
INSERT INTO column_data_train VALUES('WideWorldImportersDW','Dimension','Employee','Employee Key',0,0,0,0,1,12)
INSERT INTO column_data_train VALUES('WideWorldImportersDW','Dimension','Employee','Is Salesperson',0,0,0,0,0,14)
INSERT INTO column_data_train VALUES('WideWorldImportersDW','Dimension','Employee','Lineage Key',0,0,0,0,1,11)
INSERT INTO column_data_train VALUES('WideWorldImportersDW','Dimension','Employee','Photo',0,0,0,0,0,5)
INSERT INTO column_data_train VALUES('WideWorldImportersDW','Dimension','Employee','Preferred Name',0,1,0,0,0,14)
INSERT INTO column_data_train VALUES('WideWorldImportersDW','Dimension','Employee','Valid From',1,0,0,0,0,10)
INSERT INTO column_data_train VALUES('WideWorldImportersDW','Dimension','Employee','Valid To',1,0,0,0,0,8)
INSERT INTO column_data_train VALUES('WideWorldImportersDW','Dimension','Employee','WWI Employee ID',1,0,0,0,0,15)
INSERT INTO column_data_train VALUES('WideWorldImportersDW','Dimension','Payment Method','Lineage Key',0,0,0,0,1,11)
INSERT INTO column_data_train VALUES('WideWorldImportersDW','Dimension','Payment Method','Payment Method',0,0,0,0,0,14)
INSERT INTO column_data_train VALUES('WideWorldImportersDW','Dimension','Payment Method','Payment Method Key',0,0,0,0,1,18)
INSERT INTO column_data_train VALUES('WideWorldImportersDW','Dimension','Payment Method','Valid From',1,0,0,0,0,10)
INSERT INTO column_data_train VALUES('WideWorldImportersDW','Dimension','Payment Method','Valid To',1,0,0,0,0,8)
INSERT INTO column_data_train VALUES('WideWorldImportersDW','Dimension','Payment Method','WWI Payment Method ID',1,0,0,0,0,21)
INSERT INTO column_data_train VALUES('WideWorldImportersDW','Dimension','Stock Item','Barcode',0,0,0,0,0,7)
INSERT INTO column_data_train VALUES('WideWorldImportersDW','Dimension','Stock Item','Brand',0,0,0,0,0,5)
INSERT INTO column_data_train VALUES('WideWorldImportersDW','Dimension','Stock Item','Buying Package',0,0,0,0,0,14)
INSERT INTO column_data_train VALUES('WideWorldImportersDW','Dimension','Stock Item','Color',0,0,0,0,0,5)
INSERT INTO column_data_train VALUES('WideWorldImportersDW','Dimension','Stock Item','Is Chiller Stock',0,0,0,0,0,16)
INSERT INTO column_data_train VALUES('WideWorldImportersDW','Dimension','Stock Item','Lead Time Days',0,0,0,0,0,14)
INSERT INTO column_data_train VALUES('WideWorldImportersDW','Dimension','Stock Item','Lineage Key',0,0,0,0,1,11)
INSERT INTO column_data_train VALUES('WideWorldImportersDW','Dimension','Stock Item','Photo',0,0,0,0,0,5)
INSERT INTO column_data_train VALUES('WideWorldImportersDW','Dimension','Stock Item','Quantity Per Outer',0,0,0,0,0,18)
INSERT INTO column_data_train VALUES('WideWorldImportersDW','Dimension','Stock Item','Recommended Retail Price',0,0,0,0,0,24)
INSERT INTO column_data_train VALUES('WideWorldImportersDW','Dimension','Stock Item','Selling Package',0,0,0,0,0,15)
INSERT INTO column_data_train VALUES('WideWorldImportersDW','Dimension','Stock Item','Size',0,0,0,0,0,4)
INSERT INTO column_data_train VALUES('WideWorldImportersDW','Dimension','Stock Item','Stock Item',0,0,0,0,0,10)
INSERT INTO column_data_train VALUES('WideWorldImportersDW','Dimension','Stock Item','Stock Item Key',0,0,0,0,1,14)
INSERT INTO column_data_train VALUES('WideWorldImportersDW','Dimension','Stock Item','Tax Rate',0,0,0,0,0,8)
INSERT INTO column_data_train VALUES('WideWorldImportersDW','Dimension','Stock Item','Typical Weight Per Unit',0,0,0,0,0,23)
INSERT INTO column_data_train VALUES('WideWorldImportersDW','Dimension','Stock Item','Unit Price',0,0,0,0,0,10)
INSERT INTO column_data_train VALUES('WideWorldImportersDW','Dimension','Stock Item','Valid From',1,0,0,0,0,10)
INSERT INTO column_data_train VALUES('WideWorldImportersDW','Dimension','Stock Item','Valid To',1,0,0,0,0,8)
INSERT INTO column_data_train VALUES('WideWorldImportersDW','Dimension','Stock Item','WWI Stock Item ID',1,0,0,0,0,17)
INSERT INTO column_data_train VALUES('WideWorldImportersDW','Dimension','Supplier','Category',0,0,0,0,0,8)
INSERT INTO column_data_train VALUES('WideWorldImportersDW','Dimension','Supplier','Lineage Key',0,0,0,0,1,11)
INSERT INTO column_data_train VALUES('WideWorldImportersDW','Dimension','Supplier','Payment Days',0,0,0,0,0,12)
INSERT INTO column_data_train VALUES('WideWorldImportersDW','Dimension','Supplier','Postal Code',0,0,0,0,0,11)
INSERT INTO column_data_train VALUES('WideWorldImportersDW','Dimension','Supplier','Primary Contact',0,0,0,0,0,15)
INSERT INTO column_data_train VALUES('WideWorldImportersDW','Dimension','Supplier','Supplier',0,0,0,0,0,8)
INSERT INTO column_data_train VALUES('WideWorldImportersDW','Dimension','Supplier','Supplier Key',0,0,0,0,1,12)
INSERT INTO column_data_train VALUES('WideWorldImportersDW','Dimension','Supplier','Supplier Reference',0,0,0,0,0,18)
INSERT INTO column_data_train VALUES('WideWorldImportersDW','Dimension','Supplier','Valid From',1,0,0,0,0,10)
INSERT INTO column_data_train VALUES('WideWorldImportersDW','Dimension','Supplier','Valid To',1,0,0,0,0,8)
INSERT INTO column_data_train VALUES('WideWorldImportersDW','Dimension','Supplier','WWI Supplier ID',1,0,0,0,0,15)
INSERT INTO column_data_train VALUES('WideWorldImportersDW','Dimension','Transaction Type','Lineage Key',0,0,0,0,1,11)
INSERT INTO column_data_train VALUES('WideWorldImportersDW','Dimension','Transaction Type','Transaction Type',0,0,0,0,0,16)
INSERT INTO column_data_train VALUES('WideWorldImportersDW','Dimension','Transaction Type','Transaction Type Key',0,0,0,0,1,20)
INSERT INTO column_data_train VALUES('WideWorldImportersDW','Dimension','Transaction Type','Valid From',1,0,0,0,0,10)
INSERT INTO column_data_train VALUES('WideWorldImportersDW','Dimension','Transaction Type','Valid To',1,0,0,0,0,8)
INSERT INTO column_data_train VALUES('WideWorldImportersDW','Dimension','Transaction Type','WWI Transaction Type ID',1,0,0,0,0,23)
INSERT INTO column_data_train VALUES('WideWorldImportersDW','Fact','Movement','Customer Key',0,0,0,0,1,12)
INSERT INTO column_data_train VALUES('WideWorldImportersDW','Fact','Movement','Date Key',0,0,0,0,1,8)
INSERT INTO column_data_train VALUES('WideWorldImportersDW','Fact','Movement','Lineage Key',0,0,0,0,1,11)
INSERT INTO column_data_train VALUES('WideWorldImportersDW','Fact','Movement','Movement Key',0,0,0,0,1,12)
INSERT INTO column_data_train VALUES('WideWorldImportersDW','Fact','Movement','Quantity',0,0,0,0,0,8)
INSERT INTO column_data_train VALUES('WideWorldImportersDW','Fact','Movement','Stock Item Key',0,0,0,0,1,14)
INSERT INTO column_data_train VALUES('WideWorldImportersDW','Fact','Movement','Supplier Key',0,0,0,0,1,12)
INSERT INTO column_data_train VALUES('WideWorldImportersDW','Fact','Movement','Transaction Type Key',0,0,0,0,1,20)
INSERT INTO column_data_train VALUES('WideWorldImportersDW','Fact','Movement','WWI Invoice ID',1,0,0,0,0,14)
INSERT INTO column_data_train VALUES('WideWorldImportersDW','Fact','Movement','WWI Purchase Order ID',1,0,0,0,0,21)
INSERT INTO column_data_train VALUES('WideWorldImportersDW','Fact','Movement','WWI Stock Item Transaction ID',1,0,0,0,0,29)
INSERT INTO column_data_train VALUES('WideWorldImportersDW','Fact','Order','City Key',0,0,0,0,1,8)
INSERT INTO column_data_train VALUES('WideWorldImportersDW','Fact','Order','Customer Key',0,0,0,0,1,12)
INSERT INTO column_data_train VALUES('WideWorldImportersDW','Fact','Order','Description',0,0,0,0,0,11)
INSERT INTO column_data_train VALUES('WideWorldImportersDW','Fact','Order','Lineage Key',0,0,0,0,1,11)
INSERT INTO column_data_train VALUES('WideWorldImportersDW','Fact','Order','Order Date Key',0,0,0,0,1,14)
INSERT INTO column_data_train VALUES('WideWorldImportersDW','Fact','Order','Order Key',0,0,0,0,1,9)
INSERT INTO column_data_train VALUES('WideWorldImportersDW','Fact','Order','Package',0,0,0,0,0,7)
INSERT INTO column_data_train VALUES('WideWorldImportersDW','Fact','Order','Picked Date Key',0,0,0,0,1,15)
INSERT INTO column_data_train VALUES('WideWorldImportersDW','Fact','Order','Picker Key',0,0,0,0,1,10)
INSERT INTO column_data_train VALUES('WideWorldImportersDW','Fact','Order','Quantity',0,0,0,0,0,8)
INSERT INTO column_data_train VALUES('WideWorldImportersDW','Fact','Order','Salesperson Key',0,0,0,0,1,15)
INSERT INTO column_data_train VALUES('WideWorldImportersDW','Fact','Order','Stock Item Key',0,0,0,0,1,14)
INSERT INTO column_data_train VALUES('WideWorldImportersDW','Fact','Order','Tax Amount',0,0,0,0,0,10)
INSERT INTO column_data_train VALUES('WideWorldImportersDW','Fact','Order','Tax Rate',0,0,0,0,0,8)
INSERT INTO column_data_train VALUES('WideWorldImportersDW','Fact','Order','Total Excluding Tax',0,0,0,0,0,19)
INSERT INTO column_data_train VALUES('WideWorldImportersDW','Fact','Order','Total Including Tax',0,0,0,0,0,19)
INSERT INTO column_data_train VALUES('WideWorldImportersDW','Fact','Order','Unit Price',0,0,0,0,0,10)
INSERT INTO column_data_train VALUES('WideWorldImportersDW','Fact','Order','WWI Backorder ID',1,0,0,0,0,16)
INSERT INTO column_data_train VALUES('WideWorldImportersDW','Fact','Order','WWI Order ID',1,0,0,0,0,12)
INSERT INTO column_data_train VALUES('WideWorldImportersDW','Fact','Purchase','Date Key',0,0,0,0,1,8)
INSERT INTO column_data_train VALUES('WideWorldImportersDW','Fact','Purchase','Is Order Finalized',0,0,0,0,0,18)
INSERT INTO column_data_train VALUES('WideWorldImportersDW','Fact','Purchase','Lineage Key',0,0,0,0,1,11)
INSERT INTO column_data_train VALUES('WideWorldImportersDW','Fact','Purchase','Ordered Outers',0,0,0,0,0,14)
INSERT INTO column_data_train VALUES('WideWorldImportersDW','Fact','Purchase','Ordered Quantity',0,0,0,0,0,16)
INSERT INTO column_data_train VALUES('WideWorldImportersDW','Fact','Purchase','Package',0,0,0,0,0,7)
INSERT INTO column_data_train VALUES('WideWorldImportersDW','Fact','Purchase','Purchase Key',0,0,0,0,1,12)
INSERT INTO column_data_train VALUES('WideWorldImportersDW','Fact','Purchase','Received Outers',0,0,0,0,0,15)
INSERT INTO column_data_train VALUES('WideWorldImportersDW','Fact','Purchase','Stock Item Key',0,0,0,0,1,14)
INSERT INTO column_data_train VALUES('WideWorldImportersDW','Fact','Purchase','Supplier Key',0,0,0,0,1,12)
INSERT INTO column_data_train VALUES('WideWorldImportersDW','Fact','Purchase','WWI Purchase Order ID',1,0,0,0,0,21)
INSERT INTO column_data_train VALUES('WideWorldImportersDW','Fact','Sale','Bill To Customer Key',0,0,0,0,1,20)
INSERT INTO column_data_train VALUES('WideWorldImportersDW','Fact','Sale','City Key',0,0,0,0,1,8)
INSERT INTO column_data_train VALUES('WideWorldImportersDW','Fact','Sale','Customer Key',0,0,0,0,1,12)
INSERT INTO column_data_train VALUES('WideWorldImportersDW','Fact','Sale','Delivery Date Key',0,0,0,0,1,17)
INSERT INTO column_data_train VALUES('WideWorldImportersDW','Fact','Sale','Description',0,0,0,0,0,11)
INSERT INTO column_data_train VALUES('WideWorldImportersDW','Fact','Sale','Invoice Date Key',0,0,0,0,1,16)
INSERT INTO column_data_train VALUES('WideWorldImportersDW','Fact','Sale','Lineage Key',0,0,0,0,1,11)
INSERT INTO column_data_train VALUES('WideWorldImportersDW','Fact','Sale','Package',0,0,0,0,0,7)
INSERT INTO column_data_train VALUES('WideWorldImportersDW','Fact','Sale','Profit',0,0,0,0,0,6)
INSERT INTO column_data_train VALUES('WideWorldImportersDW','Fact','Sale','Quantity',0,0,0,0,0,8)
INSERT INTO column_data_train VALUES('WideWorldImportersDW','Fact','Sale','Sale Key',0,0,0,0,1,8)
INSERT INTO column_data_train VALUES('WideWorldImportersDW','Fact','Sale','Salesperson Key',0,0,0,0,1,15)
INSERT INTO column_data_train VALUES('WideWorldImportersDW','Fact','Sale','Stock Item Key',0,0,0,0,1,14)
INSERT INTO column_data_train VALUES('WideWorldImportersDW','Fact','Sale','Tax Amount',0,0,0,0,0,10)
INSERT INTO column_data_train VALUES('WideWorldImportersDW','Fact','Sale','Tax Rate',0,0,0,0,0,8)
INSERT INTO column_data_train VALUES('WideWorldImportersDW','Fact','Sale','Total Chiller Items',0,0,0,0,0,19)
INSERT INTO column_data_train VALUES('WideWorldImportersDW','Fact','Sale','Total Dry Items',0,0,0,0,0,15)
INSERT INTO column_data_train VALUES('WideWorldImportersDW','Fact','Sale','Total Excluding Tax',0,0,0,0,0,19)
INSERT INTO column_data_train VALUES('WideWorldImportersDW','Fact','Sale','Total Including Tax',0,0,0,0,0,19)
INSERT INTO column_data_train VALUES('WideWorldImportersDW','Fact','Sale','Unit Price',0,0,0,0,0,10)
INSERT INTO column_data_train VALUES('WideWorldImportersDW','Fact','Sale','WWI Invoice ID',1,0,0,0,0,14)
INSERT INTO column_data_train VALUES('WideWorldImportersDW','Fact','Stock Holding','Bin Location',0,0,0,0,0,12)
INSERT INTO column_data_train VALUES('WideWorldImportersDW','Fact','Stock Holding','Last Cost Price',0,0,0,0,0,15)
INSERT INTO column_data_train VALUES('WideWorldImportersDW','Fact','Stock Holding','Last Stocktake Quantity',0,0,0,0,0,23)
INSERT INTO column_data_train VALUES('WideWorldImportersDW','Fact','Stock Holding','Lineage Key',0,0,0,0,1,11)
INSERT INTO column_data_train VALUES('WideWorldImportersDW','Fact','Stock Holding','Quantity On Hand',0,0,0,0,0,16)
INSERT INTO column_data_train VALUES('WideWorldImportersDW','Fact','Stock Holding','Reorder Level',0,0,0,0,0,13)
INSERT INTO column_data_train VALUES('WideWorldImportersDW','Fact','Stock Holding','Stock Holding Key',0,0,0,0,1,17)
INSERT INTO column_data_train VALUES('WideWorldImportersDW','Fact','Stock Holding','Stock Item Key',0,0,0,0,1,14)
INSERT INTO column_data_train VALUES('WideWorldImportersDW','Fact','Stock Holding','Target Stock Level',0,0,0,0,0,18)
INSERT INTO column_data_train VALUES('WideWorldImportersDW','Fact','Transaction','Bill To Customer Key',0,0,0,0,1,20)
INSERT INTO column_data_train VALUES('WideWorldImportersDW','Fact','Transaction','Customer Key',0,0,0,0,1,12)
INSERT INTO column_data_train VALUES('WideWorldImportersDW','Fact','Transaction','Date Key',0,0,0,0,1,8)
INSERT INTO column_data_train VALUES('WideWorldImportersDW','Fact','Transaction','Is Finalized',0,0,0,0,0,12)
INSERT INTO column_data_train VALUES('WideWorldImportersDW','Fact','Transaction','Lineage Key',0,0,0,0,1,11)
INSERT INTO column_data_train VALUES('WideWorldImportersDW','Fact','Transaction','Outstanding Balance',0,0,0,0,0,19)
INSERT INTO column_data_train VALUES('WideWorldImportersDW','Fact','Transaction','Payment Method Key',0,0,0,0,1,18)
INSERT INTO column_data_train VALUES('WideWorldImportersDW','Fact','Transaction','Supplier Invoice Number',0,0,1,0,0,23)
INSERT INTO column_data_train VALUES('WideWorldImportersDW','Fact','Transaction','Supplier Key',0,0,0,0,1,12)
INSERT INTO column_data_train VALUES('WideWorldImportersDW','Fact','Transaction','Tax Amount',0,0,0,0,0,10)
INSERT INTO column_data_train VALUES('WideWorldImportersDW','Fact','Transaction','Total Excluding Tax',0,0,0,0,0,19)
INSERT INTO column_data_train VALUES('WideWorldImportersDW','Fact','Transaction','Total Including Tax',0,0,0,0,0,19)
INSERT INTO column_data_train VALUES('WideWorldImportersDW','Fact','Transaction','Transaction Key',0,0,0,0,1,15)
INSERT INTO column_data_train VALUES('WideWorldImportersDW','Fact','Transaction','Transaction Type Key',0,0,0,0,1,20)
INSERT INTO column_data_train VALUES('WideWorldImportersDW','Fact','Transaction','WWI Customer Transaction ID',1,0,0,0,0,27)
INSERT INTO column_data_train VALUES('WideWorldImportersDW','Fact','Transaction','WWI Invoice ID',1,0,0,0,0,14)
INSERT INTO column_data_train VALUES('WideWorldImportersDW','Fact','Transaction','WWI Purchase Order ID',1,0,0,0,0,21)
INSERT INTO column_data_train VALUES('WideWorldImportersDW','Fact','Transaction','WWI Supplier Transaction ID',1,0,0,0,0,27)
INSERT INTO column_data_train VALUES('WideWorldImportersDW','Integration','City_Staging','City',0,0,0,0,0,4)
INSERT INTO column_data_train VALUES('WideWorldImportersDW','Integration','City_Staging','City Staging Key',0,0,0,0,1,16)
INSERT INTO column_data_train VALUES('WideWorldImportersDW','Integration','City_Staging','Continent',0,0,0,0,0,9)
INSERT INTO column_data_train VALUES('WideWorldImportersDW','Integration','City_Staging','Country',0,0,0,0,0,7)
INSERT INTO column_data_train VALUES('WideWorldImportersDW','Integration','City_Staging','Latest Recorded Population',0,0,0,0,0,26)
INSERT INTO column_data_train VALUES('WideWorldImportersDW','Integration','City_Staging','Location',0,0,0,0,0,8)
INSERT INTO column_data_train VALUES('WideWorldImportersDW','Integration','City_Staging','Region',0,0,0,0,0,6)
INSERT INTO column_data_train VALUES('WideWorldImportersDW','Integration','City_Staging','Sales Territory',0,0,0,0,0,15)
INSERT INTO column_data_train VALUES('WideWorldImportersDW','Integration','City_Staging','State Province',0,0,0,0,0,14)
INSERT INTO column_data_train VALUES('WideWorldImportersDW','Integration','City_Staging','Subregion',0,0,0,0,0,9)
INSERT INTO column_data_train VALUES('WideWorldImportersDW','Integration','City_Staging','Valid From',1,0,0,0,0,10)
INSERT INTO column_data_train VALUES('WideWorldImportersDW','Integration','City_Staging','Valid To',1,0,0,0,0,8)
INSERT INTO column_data_train VALUES('WideWorldImportersDW','Integration','City_Staging','WWI City ID',1,0,0,0,0,11)
INSERT INTO column_data_train VALUES('WideWorldImportersDW','Integration','Customer_Staging','Bill To Customer',0,0,0,0,0,16)
INSERT INTO column_data_train VALUES('WideWorldImportersDW','Integration','Customer_Staging','Buying Group',0,0,0,0,0,12)
INSERT INTO column_data_train VALUES('WideWorldImportersDW','Integration','Customer_Staging','Category',0,0,0,0,0,8)
INSERT INTO column_data_train VALUES('WideWorldImportersDW','Integration','Customer_Staging','Customer',0,0,0,0,0,8)
INSERT INTO column_data_train VALUES('WideWorldImportersDW','Integration','Customer_Staging','Customer Staging Key',0,0,0,0,1,20)
INSERT INTO column_data_train VALUES('WideWorldImportersDW','Integration','Customer_Staging','Postal Code',0,0,0,0,0,11)
INSERT INTO column_data_train VALUES('WideWorldImportersDW','Integration','Customer_Staging','Primary Contact',0,0,0,0,0,15)
INSERT INTO column_data_train VALUES('WideWorldImportersDW','Integration','Customer_Staging','Valid From',1,0,0,0,0,10)
INSERT INTO column_data_train VALUES('WideWorldImportersDW','Integration','Customer_Staging','Valid To',1,0,0,0,0,8)
INSERT INTO column_data_train VALUES('WideWorldImportersDW','Integration','Customer_Staging','WWI Customer ID',1,0,0,0,0,15)
INSERT INTO column_data_train VALUES('WideWorldImportersDW','Integration','Employee_Staging','Employee',0,0,0,0,0,8)
INSERT INTO column_data_train VALUES('WideWorldImportersDW','Integration','Employee_Staging','Employee Staging Key',0,0,0,0,1,20)
INSERT INTO column_data_train VALUES('WideWorldImportersDW','Integration','Employee_Staging','Is Salesperson',0,0,0,0,0,14)
INSERT INTO column_data_train VALUES('WideWorldImportersDW','Integration','Employee_Staging','Photo',0,0,0,0,0,5)
INSERT INTO column_data_train VALUES('WideWorldImportersDW','Integration','Employee_Staging','Preferred Name',0,1,0,0,0,14)
INSERT INTO column_data_train VALUES('WideWorldImportersDW','Integration','Employee_Staging','Valid From',1,0,0,0,0,10)
INSERT INTO column_data_train VALUES('WideWorldImportersDW','Integration','Employee_Staging','Valid To',1,0,0,0,0,8)
INSERT INTO column_data_train VALUES('WideWorldImportersDW','Integration','Employee_Staging','WWI Employee ID',1,0,0,0,0,15)
INSERT INTO column_data_train VALUES('WideWorldImportersDW','Integration','ETL Cutoff','Cutoff Time',0,0,0,0,0,11)
INSERT INTO column_data_train VALUES('WideWorldImportersDW','Integration','ETL Cutoff','Table Name',0,1,0,0,0,10)
INSERT INTO column_data_train VALUES('WideWorldImportersDW','Integration','Lineage','Data Load Completed',0,0,0,0,0,19)
INSERT INTO column_data_train VALUES('WideWorldImportersDW','Integration','Lineage','Data Load Started',0,0,0,0,0,17)
INSERT INTO column_data_train VALUES('WideWorldImportersDW','Integration','Lineage','Lineage Key',0,0,0,0,1,11)
INSERT INTO column_data_train VALUES('WideWorldImportersDW','Integration','Lineage','Source System Cutoff Time',0,0,0,0,0,25)
INSERT INTO column_data_train VALUES('WideWorldImportersDW','Integration','Lineage','Table Name',0,1,0,0,0,10)
INSERT INTO column_data_train VALUES('WideWorldImportersDW','Integration','Lineage','Was Successful',0,0,0,0,0,14)
INSERT INTO column_data_train VALUES('WideWorldImportersDW','Integration','Movement_Staging','Customer Key',0,0,0,0,1,12)
INSERT INTO column_data_train VALUES('WideWorldImportersDW','Integration','Movement_Staging','Date Key',0,0,0,0,1,8)
INSERT INTO column_data_train VALUES('WideWorldImportersDW','Integration','Movement_Staging','Last Modifed When',0,0,0,0,0,17)
INSERT INTO column_data_train VALUES('WideWorldImportersDW','Integration','Movement_Staging','Movement Staging Key',0,0,0,0,1,20)
INSERT INTO column_data_train VALUES('WideWorldImportersDW','Integration','Movement_Staging','Quantity',0,0,0,0,0,8)
INSERT INTO column_data_train VALUES('WideWorldImportersDW','Integration','Movement_Staging','Stock Item Key',0,0,0,0,1,14)
INSERT INTO column_data_train VALUES('WideWorldImportersDW','Integration','Movement_Staging','Supplier Key',0,0,0,0,1,12)
INSERT INTO column_data_train VALUES('WideWorldImportersDW','Integration','Movement_Staging','Transaction Type Key',0,0,0,0,1,20)
INSERT INTO column_data_train VALUES('WideWorldImportersDW','Integration','Movement_Staging','WWI Customer ID',1,0,0,0,0,15)
INSERT INTO column_data_train VALUES('WideWorldImportersDW','Integration','Movement_Staging','WWI Invoice ID',1,0,0,0,0,14)
INSERT INTO column_data_train VALUES('WideWorldImportersDW','Integration','Movement_Staging','WWI Purchase Order ID',1,0,0,0,0,21)
INSERT INTO column_data_train VALUES('WideWorldImportersDW','Integration','Movement_Staging','WWI Stock Item ID',1,0,0,0,0,17)
INSERT INTO column_data_train VALUES('WideWorldImportersDW','Integration','Movement_Staging','WWI Stock Item Transaction ID',1,0,0,0,0,29)
INSERT INTO column_data_train VALUES('WideWorldImportersDW','Integration','Movement_Staging','WWI Supplier ID',1,0,0,0,0,15)
INSERT INTO column_data_train VALUES('WideWorldImportersDW','Integration','Movement_Staging','WWI Transaction Type ID',1,0,0,0,0,23)
INSERT INTO column_data_train VALUES('WideWorldImportersDW','Integration','Order_Staging','City Key',0,0,0,0,1,8)
INSERT INTO column_data_train VALUES('WideWorldImportersDW','Integration','Order_Staging','Customer Key',0,0,0,0,1,12)
INSERT INTO column_data_train VALUES('WideWorldImportersDW','Integration','Order_Staging','Description',0,0,0,0,0,11)
INSERT INTO column_data_train VALUES('WideWorldImportersDW','Integration','Order_Staging','Last Modified When',0,0,0,0,0,18)
INSERT INTO column_data_train VALUES('WideWorldImportersDW','Integration','Order_Staging','Lineage Key',0,0,0,0,1,11)
INSERT INTO column_data_train VALUES('WideWorldImportersDW','Integration','Order_Staging','Order Date Key',0,0,0,0,1,14)
INSERT INTO column_data_train VALUES('WideWorldImportersDW','Integration','Order_Staging','Order Staging Key',0,0,0,0,1,17)
INSERT INTO column_data_train VALUES('WideWorldImportersDW','Integration','Order_Staging','Package',0,0,0,0,0,7)
INSERT INTO column_data_train VALUES('WideWorldImportersDW','Integration','Order_Staging','Picked Date Key',0,0,0,0,1,15)
INSERT INTO column_data_train VALUES('WideWorldImportersDW','Integration','Order_Staging','Picker Key',0,0,0,0,1,10)
INSERT INTO column_data_train VALUES('WideWorldImportersDW','Integration','Order_Staging','Quantity',0,0,0,0,0,8)
INSERT INTO column_data_train VALUES('WideWorldImportersDW','Integration','Order_Staging','Salesperson Key',0,0,0,0,1,15)
INSERT INTO column_data_train VALUES('WideWorldImportersDW','Integration','Order_Staging','Stock Item Key',0,0,0,0,1,14)
INSERT INTO column_data_train VALUES('WideWorldImportersDW','Integration','Order_Staging','Tax Amount',0,0,0,0,0,10)
INSERT INTO column_data_train VALUES('WideWorldImportersDW','Integration','Order_Staging','Tax Rate',0,0,0,0,0,8)
INSERT INTO column_data_train VALUES('WideWorldImportersDW','Integration','Order_Staging','Total Excluding Tax',0,0,0,0,0,19)
INSERT INTO column_data_train VALUES('WideWorldImportersDW','Integration','Order_Staging','Total Including Tax',0,0,0,0,0,19)
INSERT INTO column_data_train VALUES('WideWorldImportersDW','Integration','Order_Staging','Unit Price',0,0,0,0,0,10)
INSERT INTO column_data_train VALUES('WideWorldImportersDW','Integration','Order_Staging','WWI Backorder ID',1,0,0,0,0,16)
INSERT INTO column_data_train VALUES('WideWorldImportersDW','Integration','Order_Staging','WWI City ID',1,0,0,0,0,11)
INSERT INTO column_data_train VALUES('WideWorldImportersDW','Integration','Order_Staging','WWI Customer ID',1,0,0,0,0,15)
INSERT INTO column_data_train VALUES('WideWorldImportersDW','Integration','Order_Staging','WWI Order ID',1,0,0,0,0,12)
INSERT INTO column_data_train VALUES('WideWorldImportersDW','Integration','Order_Staging','WWI Picker ID',1,0,0,0,0,13)
INSERT INTO column_data_train VALUES('WideWorldImportersDW','Integration','Order_Staging','WWI Salesperson ID',1,0,0,0,0,18)
INSERT INTO column_data_train VALUES('WideWorldImportersDW','Integration','Order_Staging','WWI Stock Item ID',1,0,0,0,0,17)
INSERT INTO column_data_train VALUES('WideWorldImportersDW','Integration','PaymentMethod_Staging','Payment Method',0,0,0,0,0,14)
INSERT INTO column_data_train VALUES('WideWorldImportersDW','Integration','PaymentMethod_Staging','Payment Method Staging Key',0,0,0,0,1,26)
INSERT INTO column_data_train VALUES('WideWorldImportersDW','Integration','PaymentMethod_Staging','Valid From',1,0,0,0,0,10)
INSERT INTO column_data_train VALUES('WideWorldImportersDW','Integration','PaymentMethod_Staging','Valid To',1,0,0,0,0,8)
INSERT INTO column_data_train VALUES('WideWorldImportersDW','Integration','PaymentMethod_Staging','WWI Payment Method ID',1,0,0,0,0,21)
INSERT INTO column_data_train VALUES('WideWorldImportersDW','Integration','Purchase_Staging','Date Key',0,0,0,0,1,8)
INSERT INTO column_data_train VALUES('WideWorldImportersDW','Integration','Purchase_Staging','Is Order Finalized',0,0,0,0,0,18)
INSERT INTO column_data_train VALUES('WideWorldImportersDW','Integration','Purchase_Staging','Last Modified When',0,0,0,0,0,18)
INSERT INTO column_data_train VALUES('WideWorldImportersDW','Integration','Purchase_Staging','Ordered Outers',0,0,0,0,0,14)
INSERT INTO column_data_train VALUES('WideWorldImportersDW','Integration','Purchase_Staging','Ordered Quantity',0,0,0,0,0,16)
INSERT INTO column_data_train VALUES('WideWorldImportersDW','Integration','Purchase_Staging','Package',0,0,0,0,0,7)
INSERT INTO column_data_train VALUES('WideWorldImportersDW','Integration','Purchase_Staging','Purchase Staging Key',0,0,0,0,1,20)
INSERT INTO column_data_train VALUES('WideWorldImportersDW','Integration','Purchase_Staging','Received Outers',0,0,0,0,0,15)
INSERT INTO column_data_train VALUES('WideWorldImportersDW','Integration','Purchase_Staging','Stock Item Key',0,0,0,0,1,14)
INSERT INTO column_data_train VALUES('WideWorldImportersDW','Integration','Purchase_Staging','Supplier Key',0,0,0,0,1,12)
INSERT INTO column_data_train VALUES('WideWorldImportersDW','Integration','Purchase_Staging','WWI Purchase Order ID',1,0,0,0,0,21)
INSERT INTO column_data_train VALUES('WideWorldImportersDW','Integration','Purchase_Staging','WWI Stock Item ID',1,0,0,0,0,17)
INSERT INTO column_data_train VALUES('WideWorldImportersDW','Integration','Purchase_Staging','WWI Supplier ID',1,0,0,0,0,15)
INSERT INTO column_data_train VALUES('WideWorldImportersDW','Integration','Sale_Staging','Bill To Customer Key',0,0,0,0,1,20)
INSERT INTO column_data_train VALUES('WideWorldImportersDW','Integration','Sale_Staging','City Key',0,0,0,0,1,8)
INSERT INTO column_data_train VALUES('WideWorldImportersDW','Integration','Sale_Staging','Customer Key',0,0,0,0,1,12)
INSERT INTO column_data_train VALUES('WideWorldImportersDW','Integration','Sale_Staging','Delivery Date Key',0,0,0,0,1,17)
INSERT INTO column_data_train VALUES('WideWorldImportersDW','Integration','Sale_Staging','Description',0,0,0,0,0,11)
INSERT INTO column_data_train VALUES('WideWorldImportersDW','Integration','Sale_Staging','Invoice Date Key',0,0,0,0,1,16)
INSERT INTO column_data_train VALUES('WideWorldImportersDW','Integration','Sale_Staging','Last Modified When',0,0,0,0,0,18)
INSERT INTO column_data_train VALUES('WideWorldImportersDW','Integration','Sale_Staging','Package',0,0,0,0,0,7)
INSERT INTO column_data_train VALUES('WideWorldImportersDW','Integration','Sale_Staging','Profit',0,0,0,0,0,6)
INSERT INTO column_data_train VALUES('WideWorldImportersDW','Integration','Sale_Staging','Quantity',0,0,0,0,0,8)
INSERT INTO column_data_train VALUES('WideWorldImportersDW','Integration','Sale_Staging','Sale Staging Key',0,0,0,0,1,16)
INSERT INTO column_data_train VALUES('WideWorldImportersDW','Integration','Sale_Staging','Salesperson Key',0,0,0,0,1,15)
INSERT INTO column_data_train VALUES('WideWorldImportersDW','Integration','Sale_Staging','Stock Item Key',0,0,0,0,1,14)
INSERT INTO column_data_train VALUES('WideWorldImportersDW','Integration','Sale_Staging','Tax Amount',0,0,0,0,0,10)
INSERT INTO column_data_train VALUES('WideWorldImportersDW','Integration','Sale_Staging','Tax Rate',0,0,0,0,0,8)
INSERT INTO column_data_train VALUES('WideWorldImportersDW','Integration','Sale_Staging','Total Chiller Items',0,0,0,0,0,19)
INSERT INTO column_data_train VALUES('WideWorldImportersDW','Integration','Sale_Staging','Total Dry Items',0,0,0,0,0,15)
INSERT INTO column_data_train VALUES('WideWorldImportersDW','Integration','Sale_Staging','Total Excluding Tax',0,0,0,0,0,19)
INSERT INTO column_data_train VALUES('WideWorldImportersDW','Integration','Sale_Staging','Total Including Tax',0,0,0,0,0,19)
INSERT INTO column_data_train VALUES('WideWorldImportersDW','Integration','Sale_Staging','Unit Price',0,0,0,0,0,10)
INSERT INTO column_data_train VALUES('WideWorldImportersDW','Integration','Sale_Staging','WWI Bill To Customer ID',1,0,0,0,0,23)
INSERT INTO column_data_train VALUES('WideWorldImportersDW','Integration','Sale_Staging','WWI City ID',1,0,0,0,0,11)
INSERT INTO column_data_train VALUES('WideWorldImportersDW','Integration','Sale_Staging','WWI Customer ID',1,0,0,0,0,15)
INSERT INTO column_data_train VALUES('WideWorldImportersDW','Integration','Sale_Staging','WWI Invoice ID',1,0,0,0,0,14)
INSERT INTO column_data_train VALUES('WideWorldImportersDW','Integration','Sale_Staging','WWI Salesperson ID',1,0,0,0,0,18)
INSERT INTO column_data_train VALUES('WideWorldImportersDW','Integration','Sale_Staging','WWI Stock Item ID',1,0,0,0,0,17)
INSERT INTO column_data_train VALUES('WideWorldImportersDW','Integration','StockHolding_Staging','Bin Location',0,0,0,0,0,12)
INSERT INTO column_data_train VALUES('WideWorldImportersDW','Integration','StockHolding_Staging','Last Cost Price',0,0,0,0,0,15)
INSERT INTO column_data_train VALUES('WideWorldImportersDW','Integration','StockHolding_Staging','Last Stocktake Quantity',0,0,0,0,0,23)
INSERT INTO column_data_train VALUES('WideWorldImportersDW','Integration','StockHolding_Staging','Quantity On Hand',0,0,0,0,0,16)
INSERT INTO column_data_train VALUES('WideWorldImportersDW','Integration','StockHolding_Staging','Reorder Level',0,0,0,0,0,13)
INSERT INTO column_data_train VALUES('WideWorldImportersDW','Integration','StockHolding_Staging','Stock Holding Staging Key',0,0,0,0,1,25)
INSERT INTO column_data_train VALUES('WideWorldImportersDW','Integration','StockHolding_Staging','Stock Item Key',0,0,0,0,1,14)
INSERT INTO column_data_train VALUES('WideWorldImportersDW','Integration','StockHolding_Staging','Target Stock Level',0,0,0,0,0,18)
INSERT INTO column_data_train VALUES('WideWorldImportersDW','Integration','StockHolding_Staging','WWI Stock Item ID',1,0,0,0,0,17)
INSERT INTO column_data_train VALUES('WideWorldImportersDW','Integration','StockItem_Staging','Barcode',0,0,0,0,0,7)
INSERT INTO column_data_train VALUES('WideWorldImportersDW','Integration','StockItem_Staging','Brand',0,0,0,0,0,5)
INSERT INTO column_data_train VALUES('WideWorldImportersDW','Integration','StockItem_Staging','Buying Package',0,0,0,0,0,14)
INSERT INTO column_data_train VALUES('WideWorldImportersDW','Integration','StockItem_Staging','Color',0,0,0,0,0,5)
INSERT INTO column_data_train VALUES('WideWorldImportersDW','Integration','StockItem_Staging','Is Chiller Stock',0,0,0,0,0,16)
INSERT INTO column_data_train VALUES('WideWorldImportersDW','Integration','StockItem_Staging','Lead Time Days',0,0,0,0,0,14)
INSERT INTO column_data_train VALUES('WideWorldImportersDW','Integration','StockItem_Staging','Photo',0,0,0,0,0,5)
INSERT INTO column_data_train VALUES('WideWorldImportersDW','Integration','StockItem_Staging','Quantity Per Outer',0,0,0,0,0,18)
INSERT INTO column_data_train VALUES('WideWorldImportersDW','Integration','StockItem_Staging','Recommended Retail Price',0,0,0,0,0,24)
INSERT INTO column_data_train VALUES('WideWorldImportersDW','Integration','StockItem_Staging','Selling Package',0,0,0,0,0,15)
INSERT INTO column_data_train VALUES('WideWorldImportersDW','Integration','StockItem_Staging','Size',0,0,0,0,0,4)
INSERT INTO column_data_train VALUES('WideWorldImportersDW','Integration','StockItem_Staging','Stock Item',0,0,0,0,0,10)
INSERT INTO column_data_train VALUES('WideWorldImportersDW','Integration','StockItem_Staging','Stock Item Staging Key',0,0,0,0,1,22)
INSERT INTO column_data_train VALUES('WideWorldImportersDW','Integration','StockItem_Staging','Tax Rate',0,0,0,0,0,8)
INSERT INTO column_data_train VALUES('WideWorldImportersDW','Integration','StockItem_Staging','Typical Weight Per Unit',0,0,0,0,0,23)
INSERT INTO column_data_train VALUES('WideWorldImportersDW','Integration','StockItem_Staging','Unit Price',0,0,0,0,0,10)
INSERT INTO column_data_train VALUES('WideWorldImportersDW','Integration','StockItem_Staging','Valid From',1,0,0,0,0,10)
INSERT INTO column_data_train VALUES('WideWorldImportersDW','Integration','StockItem_Staging','Valid To',1,0,0,0,0,8)
INSERT INTO column_data_train VALUES('WideWorldImportersDW','Integration','StockItem_Staging','WWI Stock Item ID',1,0,0,0,0,17)
INSERT INTO column_data_train VALUES('WideWorldImportersDW','Integration','Supplier_Staging','Category',0,0,0,0,0,8)
INSERT INTO column_data_train VALUES('WideWorldImportersDW','Integration','Supplier_Staging','Payment Days',0,0,0,0,0,12)
INSERT INTO column_data_train VALUES('WideWorldImportersDW','Integration','Supplier_Staging','Postal Code',0,0,0,0,0,11)
INSERT INTO column_data_train VALUES('WideWorldImportersDW','Integration','Supplier_Staging','Primary Contact',0,0,0,0,0,15)
INSERT INTO column_data_train VALUES('WideWorldImportersDW','Integration','Supplier_Staging','Supplier',0,0,0,0,0,8)
INSERT INTO column_data_train VALUES('WideWorldImportersDW','Integration','Supplier_Staging','Supplier Reference',0,0,0,0,0,18)
INSERT INTO column_data_train VALUES('WideWorldImportersDW','Integration','Supplier_Staging','Supplier Staging Key',0,0,0,0,1,20)
INSERT INTO column_data_train VALUES('WideWorldImportersDW','Integration','Supplier_Staging','Valid From',1,0,0,0,0,10)
INSERT INTO column_data_train VALUES('WideWorldImportersDW','Integration','Supplier_Staging','Valid To',1,0,0,0,0,8)
INSERT INTO column_data_train VALUES('WideWorldImportersDW','Integration','Supplier_Staging','WWI Supplier ID',1,0,0,0,0,15)
INSERT INTO column_data_train VALUES('WideWorldImportersDW','Integration','Transaction_Staging','Bill To Customer Key',0,0,0,0,1,20)
INSERT INTO column_data_train VALUES('WideWorldImportersDW','Integration','Transaction_Staging','Customer Key',0,0,0,0,1,12)
INSERT INTO column_data_train VALUES('WideWorldImportersDW','Integration','Transaction_Staging','Date Key',0,0,0,0,1,8)
INSERT INTO column_data_train VALUES('WideWorldImportersDW','Integration','Transaction_Staging','Is Finalized',0,0,0,0,0,12)
INSERT INTO column_data_train VALUES('WideWorldImportersDW','Integration','Transaction_Staging','Last Modified When',0,0,0,0,0,18)
INSERT INTO column_data_train VALUES('WideWorldImportersDW','Integration','Transaction_Staging','Outstanding Balance',0,0,0,0,0,19)
INSERT INTO column_data_train VALUES('WideWorldImportersDW','Integration','Transaction_Staging','Payment Method Key',0,0,0,0,1,18)
INSERT INTO column_data_train VALUES('WideWorldImportersDW','Integration','Transaction_Staging','Supplier Invoice Number',0,0,1,0,0,23)
INSERT INTO column_data_train VALUES('WideWorldImportersDW','Integration','Transaction_Staging','Supplier Key',0,0,0,0,1,12)
INSERT INTO column_data_train VALUES('WideWorldImportersDW','Integration','Transaction_Staging','Tax Amount',0,0,0,0,0,10)
INSERT INTO column_data_train VALUES('WideWorldImportersDW','Integration','Transaction_Staging','Total Excluding Tax',0,0,0,0,0,19)
INSERT INTO column_data_train VALUES('WideWorldImportersDW','Integration','Transaction_Staging','Total Including Tax',0,0,0,0,0,19)
INSERT INTO column_data_train VALUES('WideWorldImportersDW','Integration','Transaction_Staging','Transaction Staging Key',0,0,0,0,1,23)
INSERT INTO column_data_train VALUES('WideWorldImportersDW','Integration','Transaction_Staging','Transaction Type Key',0,0,0,0,1,20)
INSERT INTO column_data_train VALUES('WideWorldImportersDW','Integration','Transaction_Staging','WWI Bill To Customer ID',1,0,0,0,0,23)
INSERT INTO column_data_train VALUES('WideWorldImportersDW','Integration','Transaction_Staging','WWI Customer ID',1,0,0,0,0,15)
INSERT INTO column_data_train VALUES('WideWorldImportersDW','Integration','Transaction_Staging','WWI Customer Transaction ID',1,0,0,0,0,27)
INSERT INTO column_data_train VALUES('WideWorldImportersDW','Integration','Transaction_Staging','WWI Invoice ID',1,0,0,0,0,14)
INSERT INTO column_data_train VALUES('WideWorldImportersDW','Integration','Transaction_Staging','WWI Payment Method ID',1,0,0,0,0,21)
INSERT INTO column_data_train VALUES('WideWorldImportersDW','Integration','Transaction_Staging','WWI Purchase Order ID',1,0,0,0,0,21)
INSERT INTO column_data_train VALUES('WideWorldImportersDW','Integration','Transaction_Staging','WWI Supplier ID',1,0,0,0,0,15)
INSERT INTO column_data_train VALUES('WideWorldImportersDW','Integration','Transaction_Staging','WWI Supplier Transaction ID',1,0,0,0,0,27)
INSERT INTO column_data_train VALUES('WideWorldImportersDW','Integration','Transaction_Staging','WWI Transaction Type ID',1,0,0,0,0,23)
INSERT INTO column_data_train VALUES('WideWorldImportersDW','Integration','TransactionType_Staging','Transaction Type',0,0,0,0,0,16)
INSERT INTO column_data_train VALUES('WideWorldImportersDW','Integration','TransactionType_Staging','Transaction Type Staging Key',0,0,0,0,1,28)
INSERT INTO column_data_train VALUES('WideWorldImportersDW','Integration','TransactionType_Staging','Valid From',1,0,0,0,0,10)
INSERT INTO column_data_train VALUES('WideWorldImportersDW','Integration','TransactionType_Staging','Valid To',1,0,0,0,0,8)
INSERT INTO column_data_train VALUES('WideWorldImportersDW','Integration','TransactionType_Staging','WWI Transaction Type ID',1,0,0,0,0,23)

-- Setting up categorical metadata for training

IF OBJECT_ID('metadatatrain', 'u') IS NOT NULL 
  DROP TABLE metadatatrain;

  CREATE TABLE metadatatrain (
	   [META_ID] int IDENTITY(1,1) PRIMARY KEY
      ,[TABLE_CATALOG] nvarchar(128)
      ,[TABLE_SCHEMA] nvarchar(128)
      ,[TABLE_NAME] nvarchar(128)
      ,[COLUMN_NAME] nvarchar(128)
      ,[ORDINAL_POSITION] int
      ,[IS_NULLABLE] varchar(3)
      ,[DATA_TYPE] nvarchar(128)
      ,[CHARACTER_MAXIMUM_LENGTH] int
      ,[CHARACTER_OCTET_LENGTH] int
      ,[NUMERIC_PRECISION] 	tinyint
      ,[NUMERIC_PRECISION_RADIX] smallint
      ,[NUMERIC_SCALE] int
      ,[DATETIME_PRECISION] smallint
      ,[CHARACTER_SET_NAME] nvarchar(128)
	  ,[CONSTRAINT_TYPE] varchar(11)
	  ,[BUSINESS_KEY] int
	  ,[FOREIGN_KEY] int
	  ,[PRIMARY KEY] int
	  ,[CONTAINS_ID] int
	  ,[CONTAINS_NAME] int
	  ,[CONTAINS_NUMBER] int
	  ,[CONTAINS_NODE] int
	  ,[CONTAINS_KEY] int
	  ,[COLUMN_NAME_LENGTH] int
); 

DECLARE @Countertrain INT 
DECLARE @Databasetrain sysname
SET @Countertrain=1
WHILE ( @Countertrain <= (select count(name) from sys.databases Where name NOT IN ('master', 'model', 'msdb', 'tempdb', 'AdventureWorks2017', 'DVAutomation')))
BEGIN
	SET @Databasetrain = (Select name
			From 
			(
				Select 
				  Row_Number() Over (Order By name) As RowNum
				, name
				From sys.databases
				Where name NOT IN ('master', 'model', 'msdb', 'tempdb', 'AdventureWorks2017', 'DVAutomation')
			) sys2
			Where RowNum = @Countertrain)


	declare @sqltrain nvarchar(MAX)
	select @sqltrain = 
	'INSERT INTO 
    metadatatrain([TABLE_CATALOG],[TABLE_SCHEMA],[TABLE_NAME],[COLUMN_NAME],[ORDINAL_POSITION],[IS_NULLABLE],[DATA_TYPE],[CHARACTER_MAXIMUM_LENGTH],[CHARACTER_OCTET_LENGTH]
      ,[NUMERIC_PRECISION],[NUMERIC_PRECISION_RADIX],[NUMERIC_SCALE],[DATETIME_PRECISION],[CHARACTER_SET_NAME],[CONSTRAINT_TYPE]
	  ,[BUSINESS_KEY], [FOREIGN_KEY], [PRIMARY KEY],[CONTAINS_ID],[CONTAINS_NAME],[CONTAINS_NUMBER],[CONTAINS_NODE],[CONTAINS_KEY],[COLUMN_NAME_LENGTH]) 
	SELECT
		COL.[TABLE_CATALOG],COL.[TABLE_SCHEMA],COL.[TABLE_NAME],COL.[COLUMN_NAME],[ORDINAL_POSITION],[IS_NULLABLE],[DATA_TYPE],[CHARACTER_MAXIMUM_LENGTH],[CHARACTER_OCTET_LENGTH]
		  ,[NUMERIC_PRECISION],[NUMERIC_PRECISION_RADIX],[NUMERIC_SCALE],[DATETIME_PRECISION],[CHARACTER_SET_NAME],[CONSTRAINT_TYPE]
		  ,ISNULL([BUSINESS_KEY],0), ISNULL([FOREIGN_KEY],0), ISNULL([PRIMARY KEY],0),[CONTAINS_ID],[CONTAINS_NAME],[CONTAINS_NUMBER],[CONTAINS_NODE],[CONTAINS_KEY],[COLUMN_NAME_LENGTH]
	FROM
		'+@Databasetrain+'.INFORMATION_SCHEMA.COLUMNS COL
	LEFT JOIN '+@Databasetrain+'.INFORMATION_SCHEMA.CONSTRAINT_COLUMN_USAGE CONSCOLU ON COL.TABLE_CATALOG=CONSCOLU.TABLE_CATALOG AND COL.TABLE_SCHEMA=CONSCOLU.TABLE_SCHEMA AND COL.TABLE_NAME=CONSCOLU.TABLE_NAME AND
		COL.COLUMN_NAME=CONSCOLU.COLUMN_NAME
	LEFT JOIN '+@Databasetrain+'.INFORMATION_SCHEMA.TABLE_CONSTRAINTS TBLCON ON TBLCON.CONSTRAINT_NAME=CONSCOLU.CONSTRAINT_NAME
	LEFT JOIN '+@Databasetrain+'.INFORMATION_SCHEMA.TABLES TBL ON TBL.TABLE_NAME=COL.TABLE_NAME
	LEFT JOIN AdventureWorks2017.dbo.keys_train keys ON keys.[TABLE_CATALOG] collate SQL_Latin1_General_CP1_CI_AS = COL.[TABLE_CATALOG] collate SQL_Latin1_General_CP1_CI_AS 
	AND keys.[TABLE_SCHEMA] collate SQL_Latin1_General_CP1_CI_AS = COL.[TABLE_SCHEMA] collate SQL_Latin1_General_CP1_CI_AS 
	AND keys.[TABLE_NAME] collate SQL_Latin1_General_CP1_CI_AS = COL.[TABLE_NAME] collate SQL_Latin1_General_CP1_CI_AS 
	AND keys.[COLUMN_NAME] collate SQL_Latin1_General_CP1_CI_AS = COL.[COLUMN_NAME] collate SQL_Latin1_General_CP1_CI_AS
	LEFT JOIN AdventureWorks2017.dbo.column_data_train coldata ON coldata.[TABLE_CATALOG] collate SQL_Latin1_General_CP1_CI_AS = COL.[TABLE_CATALOG] collate SQL_Latin1_General_CP1_CI_AS
    AND coldata.[TABLE_SCHEMA] collate SQL_Latin1_General_CP1_CI_AS= COL.[TABLE_SCHEMA] collate SQL_Latin1_General_CP1_CI_AS
	AND coldata.[TABLE_NAME]  collate SQL_Latin1_General_CP1_CI_AS= COL.[TABLE_NAME] collate SQL_Latin1_General_CP1_CI_AS
	AND coldata.[COLUMN_NAME] collate SQL_Latin1_General_CP1_CI_AS= COL.[COLUMN_NAME] collate SQL_Latin1_General_CP1_CI_AS
	WHERE TBL.TABLE_TYPE=''BASE TABLE'''


	execute(@sqltrain)

	PRINT @Databasetrain
    SET @Countertrain  = @Countertrain  + 1
END



-- Setting up numeric metadata for training based on the categorical metadata and feature selection

IF OBJECT_ID('metadatatrain_numeric', 'u') IS NOT NULL 
  DROP TABLE metadatatrain_numeric;

  CREATE TABLE metadatatrain_numeric (	
	 [META_ID] int IDENTITY(1,1) PRIMARY KEY
	,[ORDINAL_POSITION] int
	,[IS_NULLABLE] int
    ,[DATA_TYPE_bigint] int	
	,[DATA_TYPE_bit] int
	,[DATA_TYPE_char] int
	,[DATA_TYPE_date] int
	,[DATA_TYPE_datetime] int
	,[DATA_TYPE_datetime2] int
	,[DATA_TYPE_decimal] int
	,[DATA_TYPE_float] int
	,[DATA_TYPE_geography] int
	,[DATA_TYPE_geometry] int
	--,[DATA_TYPE_hierarchyid] int -- 1. kierros feature selection
	,[DATA_TYPE_image] int
	,[DATA_TYPE_int] int
	--,[DATA_TYPE_money] int  -- 2. kierros feature selection, osa 2
	,[DATA_TYPE_nchar] int
	,[DATA_TYPE_ntext] int
	--,[DATA_TYPE_numeric] int -- 1. kierros feature selection
	,[DATA_TYPE_nvarchar] int
	,[DATA_TYPE_real] int
	,[DATA_TYPE_smalldatetime] int
	,[DATA_TYPE_smallint] int
	--,[DATA_TYPE_smallmoney] int -- 1. kierros feature selection
	,[DATA_TYPE_text] int
	--,[DATA_TYPE_time] int -- 1. kierros feature selection
	,[DATA_TYPE_timestamp] int
	,[DATA_TYPE_tinyint] int
	--,[DATA_TYPE_uniqueidentifier] int -- 1. kierros feature selection
	,[DATA_TYPE_varbinary] int
	,[DATA_TYPE_varchar] int
	--,[DATA_TYPE_xml] int -- 1. kierros feature selection
    ,[CHARACTER_MAXIMUM_LENGTH] int	
    --,[CHARACTER_OCTET_LENGTH] int	-- 2. kierros feature selection, osa 1
    --,[NUMERIC_PRECISION] 	tinyint -- 2. kierros feature selection, osa 1
    ,[NUMERIC_PRECISION_RADIX] smallint	
    ,[NUMERIC_SCALE] int	
    --,[DATETIME_PRECISION] smallint -- 2. kierros feature selection, osa 1	
    --,[CHARACTER_SET_NAME_iso_1] int -- 2. kierros feature selection, osa 2	
	--,[CHARACTER_SET_NAME_UNICODE] int -- 2. kierros feature selection, osa 2
	,[CONSTRAINT_TYPE_CHECK] int
	,[CONSTRAINT_TYPE_FOREIGN KEY] int
	,[CONSTRAINT_TYPE_PRIMARY KEY] int
	,[CONSTRAINT_TYPE_UNIQUE] int
	,[BUSINESS_KEY] int
	--,[FOREIGN_KEY] int -- 2. kierros feature selection, osa 2
	--,[PRIMARY KEY] int -- 2. kierros feature selection, osa 2
	,[CONTAINS_ID] int
	,[CONTAINS_NAME] int
	,[CONTAINS_NUMBER] int
	--,[CONTAINS_NODE] int -- 1. kierros feature selection
	,[CONTAINS_KEY] int
	,[COLUMN_NAME_LENGTH] int
); 	


INSERT INTO 
    metadatatrain_numeric([ORDINAL_POSITION]
						,[IS_NULLABLE]
						,[DATA_TYPE_bigint] 	
						,[DATA_TYPE_bit] 
						,[DATA_TYPE_char] 
						,[DATA_TYPE_date] 
						,[DATA_TYPE_datetime] 
						,[DATA_TYPE_datetime2] 
						,[DATA_TYPE_decimal] 
						,[DATA_TYPE_float] 
						,[DATA_TYPE_geography] 
						,[DATA_TYPE_geometry] 
						,[DATA_TYPE_image] 
						,[DATA_TYPE_int] 
						,[DATA_TYPE_nchar] 
						,[DATA_TYPE_ntext] 
						,[DATA_TYPE_nvarchar] 
						,[DATA_TYPE_real] 
						,[DATA_TYPE_smalldatetime] 
						,[DATA_TYPE_smallint] 
						,[DATA_TYPE_text] 
						,[DATA_TYPE_timestamp] 
						,[DATA_TYPE_tinyint]  
						,[DATA_TYPE_varbinary] 
						,[DATA_TYPE_varchar] 
						,[CHARACTER_MAXIMUM_LENGTH] 	
						,[NUMERIC_PRECISION_RADIX]	
						,[NUMERIC_SCALE] 	
						,[CONSTRAINT_TYPE_CHECK] 
						,[CONSTRAINT_TYPE_FOREIGN KEY] 
						,[CONSTRAINT_TYPE_PRIMARY KEY] 
						,[CONSTRAINT_TYPE_UNIQUE] 
						,[BUSINESS_KEY] 
						,[CONTAINS_ID] 
						,[CONTAINS_NAME] 
						,[CONTAINS_NUMBER]
						,[CONTAINS_KEY]
						,[COLUMN_NAME_LENGTH]) 
	SELECT
		ISNULL([ORDINAL_POSITION], 0) AS '[ORDINAL_POSITION]'
		,CASE WHEN [IS_NULLABLE]='YES' THEN 1 ELSE 0 END AS '[IS_NULLABLE]'
		,CASE WHEN [DATA_TYPE]='bigint' THEN 1 ELSE 0 END AS '[DATA_TYPE_bigint]'
		,CASE WHEN [DATA_TYPE]='bit' THEN 1 ELSE 0 END AS '[DATA_TYPE_bit]'
		,CASE WHEN [DATA_TYPE]='char' THEN 1 ELSE 0 END AS '[DATA_TYPE_char]'
		,CASE WHEN [DATA_TYPE]='date' THEN 1 ELSE 0 END AS '[DATA_TYPE_date]'
		,CASE WHEN [DATA_TYPE]='datetime' THEN 1 ELSE 0 END AS '[DATA_TYPE_datetime]'
		,CASE WHEN [DATA_TYPE]='datetime2' THEN 1 ELSE 0 END AS '[DATA_TYPE_datetime2]'
		,CASE WHEN [DATA_TYPE]='decimal' THEN 1 ELSE 0 END AS '[DATA_TYPE_decimal]'
		,CASE WHEN [DATA_TYPE]='float' THEN 1 ELSE 0 END AS '[DATA_TYPE_float]'
		,CASE WHEN [DATA_TYPE]='geography' THEN 1 ELSE 0 END AS '[DATA_TYPE_geography]'
		,CASE WHEN [DATA_TYPE]='geometry' THEN 1 ELSE 0 END AS '[DATA_TYPE_geometry]'
		,CASE WHEN [DATA_TYPE]='image' THEN 1 ELSE 0 END AS '[DATA_TYPE_image]'
		,CASE WHEN [DATA_TYPE]='int' THEN 1 ELSE 0 END AS '[DATA_TYPE_int]'
		,CASE WHEN [DATA_TYPE]='nchar' THEN 1 ELSE 0 END AS '[DATA_TYPE_nchar]'
		,CASE WHEN [DATA_TYPE]='ntext' THEN 1 ELSE 0 END AS '[DATA_TYPE_ntext]'
		,CASE WHEN [DATA_TYPE]='nvarchar' THEN 1 ELSE 0 END AS '[DATA_TYPE_nvarchar]'
		,CASE WHEN [DATA_TYPE]='real' THEN 1 ELSE 0 END AS '[DATA_TYPE_real]'
		,CASE WHEN [DATA_TYPE]='smalldatetime' THEN 1 ELSE 0 END AS '[DATA_TYPE_smalldatetime]'
		,CASE WHEN [DATA_TYPE]='smallint' THEN 1 ELSE 0 END AS '[DATA_TYPE_smallint]'
		,CASE WHEN [DATA_TYPE]='text' THEN 1 ELSE 0 END AS '[DATA_TYPE_text]'
		,CASE WHEN [DATA_TYPE]='timestamp' THEN 1 ELSE 0 END AS '[DATA_TYPE_timestamp]'
		,CASE WHEN [DATA_TYPE]='tinyint' THEN 1 ELSE 0 END AS '[DATA_TYPE_tinyint]'
		,CASE WHEN [DATA_TYPE]='varbinary' THEN 1 ELSE 0 END AS '[DATA_TYPE_varbinary]'
		,CASE WHEN [DATA_TYPE]='varchar' THEN 1 ELSE 0 END AS '[DATA_TYPE_varchar]'
		,ISNULL([CHARACTER_MAXIMUM_LENGTH], 0) AS '[CHARACTER_MAXIMUM_LENGTH]'
		,ISNULL([NUMERIC_PRECISION_RADIX], 0) AS '[NUMERIC_PRECISION_RADIX]'
		,ISNULL([NUMERIC_SCALE], 0) AS '[NUMERIC_SCALE]'
		,CASE WHEN [CONSTRAINT_TYPE]='CHECK' THEN 1 ELSE 0 END AS '[CONSTRAINT_TYPE_CHECK]'
		,CASE WHEN [CONSTRAINT_TYPE]='FOREIGN KEY' THEN 1 ELSE 0 END AS '[CONSTRAINT_TYPE_FOREIGN KEY]'
		,CASE WHEN [CONSTRAINT_TYPE]='PRIMARY KEY' THEN 1 ELSE 0 END AS '[CONSTRAINT_TYPE_PRIMARY KEY]'
		,CASE WHEN [CONSTRAINT_TYPE]='UNIQUE' THEN 1 ELSE 0 END AS '[CONSTRAINT_TYPE_UNIQUE]'
		,ISNULL([BUSINESS_KEY], 0) AS '[BUSINESS_KEY]'
		,ISNULL([CONTAINS_ID], 0) AS '[CONTAINS_ID]'
		,ISNULL([CONTAINS_NAME], 0) AS '[CONTAINS_NAME]'
		,ISNULL([CONTAINS_NUMBER], 0) AS '[CONTAINS_NUMBER]'
		,ISNULL([CONTAINS_KEY], 0) AS '[CONTAINS_KEY]'
		,ISNULL([COLUMN_NAME_LENGTH], 0) AS '[COLUMN_NAME_LENGTH]'
	FROM AdventureWorks2017.dbo.metadatatrain


-- Setting up the testing data

-- Select the database
USE AdventureWorks2017

-- Setting up some humanmade metadata about different keys
IF OBJECT_ID('keys_test', 'u') IS NOT NULL 
  DROP TABLE keys_test;

  CREATE TABLE keys_test (
       [TABLE_CATALOG] nvarchar(128)
      ,[TABLE_SCHEMA] nvarchar(128)
      ,[TABLE_NAME] nvarchar(128)
      ,[COLUMN_NAME] nvarchar(128)
	  ,[BUSINESS_KEY] int
	  ,[FOREIGN_KEY] int
	  ,[PRIMARY KEY] int
 ); 

INSERT INTO keys_test VALUES('AdventureWorks2017','dbo','AWBuildVersion','SystemInformationID',1,0,1)
INSERT INTO keys_test VALUES('AdventureWorks2017','dbo','DatabaseLog','DatabaseLogID',1,0,1)
INSERT INTO keys_test VALUES('AdventureWorks2017','dbo','ErrorLog','ErrorLogID',1,0,1)
INSERT INTO keys_test VALUES('AdventureWorks2017','HumanResources','Department','DepartmentID',1,0,1)
INSERT INTO keys_test VALUES('AdventureWorks2017','HumanResources','Employee','BusinessEntityID',0,1,1)
INSERT INTO keys_test VALUES('AdventureWorks2017','HumanResources','Employee','NationalIDNumber',1,0,0)
INSERT INTO keys_test VALUES('AdventureWorks2017','HumanResources','EmployeeDepartmentHistory','BusinessEntityID',1,1,1)
INSERT INTO keys_test VALUES('AdventureWorks2017','HumanResources','EmployeeDepartmentHistory','DepartmentID',1,1,1)
INSERT INTO keys_test VALUES('AdventureWorks2017','HumanResources','EmployeeDepartmentHistory','ShiftID',1,1,1)
INSERT INTO keys_test VALUES('AdventureWorks2017','HumanResources','EmployeeDepartmentHistory','StartDate',1,0,1)
INSERT INTO keys_test VALUES('AdventureWorks2017','HumanResources','EmployeePayHistory','BusinessEntityID',1,1,1)
INSERT INTO keys_test VALUES('AdventureWorks2017','HumanResources','EmployeePayHistory','RateChangeDate',1,0,1)
INSERT INTO keys_test VALUES('AdventureWorks2017','HumanResources','JobCandidate','JobCandidateID',1,0,1)
INSERT INTO keys_test VALUES('AdventureWorks2017','HumanResources','JobCandidate','BusinessEntityID',0,1,0)
INSERT INTO keys_test VALUES('AdventureWorks2017','HumanResources','Shift','ShiftID',1,0,1)
INSERT INTO keys_test VALUES('AdventureWorks2017','Person','Address','AddressID',1,0,1)
INSERT INTO keys_test VALUES('AdventureWorks2017','Person','Address','StateProvinceID',0,1,0)
INSERT INTO keys_test VALUES('AdventureWorks2017','Person','AddressType','AddressTypeID',1,0,1)
INSERT INTO keys_test VALUES('AdventureWorks2017','Person','BusinessEntity','BusinessEntityID',1,0,1)
INSERT INTO keys_test VALUES('AdventureWorks2017','Person','BusinessEntityAddress','BusinessEntityID',0,1,1)
INSERT INTO keys_test VALUES('AdventureWorks2017','Person','BusinessEntityAddress','AddressID',0,1,1)
INSERT INTO keys_test VALUES('AdventureWorks2017','Person','BusinessEntityAddress','AddressTypeID',0,1,1)
INSERT INTO keys_test VALUES('AdventureWorks2017','Person','BusinessEntityContact','BusinessEntityID',0,1,1)
INSERT INTO keys_test VALUES('AdventureWorks2017','Person','BusinessEntityContact','PersonID',0,1,1)
INSERT INTO keys_test VALUES('AdventureWorks2017','Person','BusinessEntityContact','ContactTypeID',0,1,1)
INSERT INTO keys_test VALUES('AdventureWorks2017','Person','ContactType','ContactTypeID',1,0,1)
INSERT INTO keys_test VALUES('AdventureWorks2017','Person','CountryRegion','CountryRegionCode',1,0,1)
INSERT INTO keys_test VALUES('AdventureWorks2017','Person','EmailAddress','EmailAddressID',1,0,1)
INSERT INTO keys_test VALUES('AdventureWorks2017','Person','EmailAddress','BusinessEntityID',1,1,1)
INSERT INTO keys_test VALUES('AdventureWorks2017','Person','Password','BusinessEntityID',0,1,1)
INSERT INTO keys_test VALUES('AdventureWorks2017','Person','Person','BusinessEntityID',0,1,1)
INSERT INTO keys_test VALUES('AdventureWorks2017','Person','PersonPhone','BusinessEntityID',1,1,1)
INSERT INTO keys_test VALUES('AdventureWorks2017','Person','PersonPhone','PhoneNumber',1,0,1)
INSERT INTO keys_test VALUES('AdventureWorks2017','Person','PersonPhone','PhoneNumberTypeID',1,1,1)
INSERT INTO keys_test VALUES('AdventureWorks2017','Person','PhoneNumberType','PhoneNumberTypeID',1,0,1)
INSERT INTO keys_test VALUES('AdventureWorks2017','Person','StateProvince','StateProvinceID',0,0,1)
INSERT INTO keys_test VALUES('AdventureWorks2017','Person','StateProvince','StateProvinceCode',1,0,0)
INSERT INTO keys_test VALUES('AdventureWorks2017','Person','StateProvince','CountryRegionCode',0,1,0)
INSERT INTO keys_test VALUES('AdventureWorks2017','Person','StateProvince','TerritoryID',0,1,0)
INSERT INTO keys_test VALUES('AdventureWorks2017','Production','BillOfMaterials','BillOfMaterialsID',1,0,1)
INSERT INTO keys_test VALUES('AdventureWorks2017','Production','BillOfMaterials','ComponentID',0,1,0)
INSERT INTO keys_test VALUES('AdventureWorks2017','Production','BillOfMaterials','ProductAssemblyID',0,1,0)
INSERT INTO keys_test VALUES('AdventureWorks2017','Production','BillOfMaterials','UnitMeasureCode',0,1,0)
INSERT INTO keys_test VALUES('AdventureWorks2017','Production','Culture','CultureID',1,0,1)
INSERT INTO keys_test VALUES('AdventureWorks2017','Production','Document','DocumentNode',1,0,1)
INSERT INTO keys_test VALUES('AdventureWorks2017','Production','Document','Owner',0,1,0)
INSERT INTO keys_test VALUES('AdventureWorks2017','Production','Illustration','IllustrationID',1,0,1)
INSERT INTO keys_test VALUES('AdventureWorks2017','Production','Location','LocationID',1,0,1)
INSERT INTO keys_test VALUES('AdventureWorks2017','Production','Product','ProductID',0,0,1)
INSERT INTO keys_test VALUES('AdventureWorks2017','Production','Product','ProductNumber',1,0,0)
INSERT INTO keys_test VALUES('AdventureWorks2017','Production','Product','ProductSubcategoryID',0,1,0)
INSERT INTO keys_test VALUES('AdventureWorks2017','Production','Product','ProductModelID',0,1,0)
INSERT INTO keys_test VALUES('AdventureWorks2017','Production','Product','SizeUnitMeasureCode',0,1,0)
INSERT INTO keys_test VALUES('AdventureWorks2017','Production','Product','WeightUnitMeasureCode',0,1,0)
INSERT INTO keys_test VALUES('AdventureWorks2017','Production','ProductCategory','ProductCategoryID',1,0,1)
INSERT INTO keys_test VALUES('AdventureWorks2017','Production','ProductCostHistory','ProductID',1,1,1)
INSERT INTO keys_test VALUES('AdventureWorks2017','Production','ProductCostHistory','StartDate',1,0,1)
INSERT INTO keys_test VALUES('AdventureWorks2017','Production','ProductDescription','ProductDescriptionID',1,0,1)
INSERT INTO keys_test VALUES('AdventureWorks2017','Production','ProductDocument','ProductID',0,1,1)
INSERT INTO keys_test VALUES('AdventureWorks2017','Production','ProductDocument','DocumentNode',0,1,1)
INSERT INTO keys_test VALUES('AdventureWorks2017','Production','ProductInventory','ProductID',0,1,1)
INSERT INTO keys_test VALUES('AdventureWorks2017','Production','ProductInventory','LocationID',0,1,1)
INSERT INTO keys_test VALUES('AdventureWorks2017','Production','ProductListPriceHistory','ProductID',1,1,1)
INSERT INTO keys_test VALUES('AdventureWorks2017','Production','ProductListPriceHistory','StartDate',1,0,1)
INSERT INTO keys_test VALUES('AdventureWorks2017','Production','ProductModel','ProductModelID',1,0,1)
INSERT INTO keys_test VALUES('AdventureWorks2017','Production','ProductModelIllustration','ProductModelID',0,1,1)
INSERT INTO keys_test VALUES('AdventureWorks2017','Production','ProductModelIllustration','IllustrationID',0,1,1)
INSERT INTO keys_test VALUES('AdventureWorks2017','Production','ProductModelProductDescriptionCulture','ProductModelID',0,1,1)
INSERT INTO keys_test VALUES('AdventureWorks2017','Production','ProductModelProductDescriptionCulture','ProductDescriptionID',0,1,1)
INSERT INTO keys_test VALUES('AdventureWorks2017','Production','ProductModelProductDescriptionCulture','CultureID',0,1,1)
INSERT INTO keys_test VALUES('AdventureWorks2017','Production','ProductPhoto','ProductPhotoID',1,0,1)
INSERT INTO keys_test VALUES('AdventureWorks2017','Production','ProductProductPhoto','ProductID',0,1,1)
INSERT INTO keys_test VALUES('AdventureWorks2017','Production','ProductProductPhoto','ProductPhotoID',0,1,1)
INSERT INTO keys_test VALUES('AdventureWorks2017','Production','ProductReview','ProductReviewID',1,0,1)
INSERT INTO keys_test VALUES('AdventureWorks2017','Production','ProductReview','ProductID',0,1,0)
INSERT INTO keys_test VALUES('AdventureWorks2017','Production','ProductSubcategory','ProductSubcategoryID',1,0,1)
INSERT INTO keys_test VALUES('AdventureWorks2017','Production','ProductSubcategory','ProductCategoryID',0,1,0)
INSERT INTO keys_test VALUES('AdventureWorks2017','Production','ScrapReason','ScrapReasonID',1,0,1)
INSERT INTO keys_test VALUES('AdventureWorks2017','Production','TransactionHistory','TransactionID',0,0,1)
INSERT INTO keys_test VALUES('AdventureWorks2017','Production','TransactionHistory','ReferenceOrderID',1,0,0)
INSERT INTO keys_test VALUES('AdventureWorks2017','Production','TransactionHistory','ReferenceOrderLineID',1,0,0)
INSERT INTO keys_test VALUES('AdventureWorks2017','Production','TransactionHistory','ProductID',0,1,0)
INSERT INTO keys_test VALUES('AdventureWorks2017','Production','TransactionHistoryArchive','TransactionID',0,0,1)
INSERT INTO keys_test VALUES('AdventureWorks2017','Production','TransactionHistoryArchive','ReferenceOrderID',1,0,0)
INSERT INTO keys_test VALUES('AdventureWorks2017','Production','TransactionHistoryArchive','ReferenceOrderLineID',1,0,0)
INSERT INTO keys_test VALUES('AdventureWorks2017','Production','UnitMeasure','UnitMeasureCode',1,0,1)
INSERT INTO keys_test VALUES('AdventureWorks2017','Production','WorkOrder','WorkOrderID',1,0,1)
INSERT INTO keys_test VALUES('AdventureWorks2017','Production','WorkOrder','ProductID',0,1,0)
INSERT INTO keys_test VALUES('AdventureWorks2017','Production','WorkOrder','ScrapReasonID',0,1,0)
INSERT INTO keys_test VALUES('AdventureWorks2017','Production','WorkOrderRouting','WorkOrderID',1,1,1)
INSERT INTO keys_test VALUES('AdventureWorks2017','Production','WorkOrderRouting','ProductID',1,1,1)
INSERT INTO keys_test VALUES('AdventureWorks2017','Production','WorkOrderRouting','OperationSequence',1,0,1)
INSERT INTO keys_test VALUES('AdventureWorks2017','Production','WorkOrderRouting','LocationID',0,1,0)
INSERT INTO keys_test VALUES('AdventureWorks2017','Purchasing','ProductVendor','ProductID',0,1,1)
INSERT INTO keys_test VALUES('AdventureWorks2017','Purchasing','ProductVendor','BusinessEntityID',0,1,1)
INSERT INTO keys_test VALUES('AdventureWorks2017','Purchasing','ProductVendor','UnitMeasureCode',0,1,0)
INSERT INTO keys_test VALUES('AdventureWorks2017','Purchasing','PurchaseOrderDetail','PurchaseOrderID',1,1,1)
INSERT INTO keys_test VALUES('AdventureWorks2017','Purchasing','PurchaseOrderDetail','PurchaseOrderDetailID',1,0,1)
INSERT INTO keys_test VALUES('AdventureWorks2017','Purchasing','PurchaseOrderDetail','ProductID',0,1,0)
INSERT INTO keys_test VALUES('AdventureWorks2017','Purchasing','PurchaseOrderHeader','PurchaseOrderID',1,0,1)
INSERT INTO keys_test VALUES('AdventureWorks2017','Purchasing','PurchaseOrderHeader','EmployeeID',0,1,0)
INSERT INTO keys_test VALUES('AdventureWorks2017','Purchasing','PurchaseOrderHeader','ShipMethodID',0,1,0)
INSERT INTO keys_test VALUES('AdventureWorks2017','Purchasing','PurchaseOrderHeader','VendorID',0,1,0)
INSERT INTO keys_test VALUES('AdventureWorks2017','Purchasing','ShipMethod','ShipMethodID',1,0,1)
INSERT INTO keys_test VALUES('AdventureWorks2017','Purchasing','Vendor','BusinessEntityID',0,1,1)
INSERT INTO keys_test VALUES('AdventureWorks2017','Purchasing','Vendor','AccountNumber',1,0,0)
INSERT INTO keys_test VALUES('AdventureWorks2017','Sales','CountryRegionCurrency','CountryRegionCode',0,1,1)
INSERT INTO keys_test VALUES('AdventureWorks2017','Sales','CountryRegionCurrency','CurrencyCode',0,1,1)
INSERT INTO keys_test VALUES('AdventureWorks2017','Sales','CreditCard','CreditCardID',1,0,1)
INSERT INTO keys_test VALUES('AdventureWorks2017','Sales','Currency','CurrencyCode',1,0,1)
INSERT INTO keys_test VALUES('AdventureWorks2017','Sales','CurrencyRate','CurrencyRateID',1,0,1)
INSERT INTO keys_test VALUES('AdventureWorks2017','Sales','CurrencyRate','FromCurrencyCode',0,1,0)
INSERT INTO keys_test VALUES('AdventureWorks2017','Sales','CurrencyRate','ToCurrencyCode',0,1,0)
INSERT INTO keys_test VALUES('AdventureWorks2017','Sales','Customer','CustomerID',0,0,1)
INSERT INTO keys_test VALUES('AdventureWorks2017','Sales','Customer','AccountNumber',1,0,0)
INSERT INTO keys_test VALUES('AdventureWorks2017','Sales','Customer','PersonID',0,1,0)
INSERT INTO keys_test VALUES('AdventureWorks2017','Sales','Customer','StoreID',0,1,0)
INSERT INTO keys_test VALUES('AdventureWorks2017','Sales','Customer','TerritoryID',0,1,0)
INSERT INTO keys_test VALUES('AdventureWorks2017','Sales','PersonCreditCard','BusinessEntityID',0,1,1)
INSERT INTO keys_test VALUES('AdventureWorks2017','Sales','PersonCreditCard','CreditCardID',0,1,1)
INSERT INTO keys_test VALUES('AdventureWorks2017','Sales','SalesOrderDetail','SalesOrderID',1,1,1)
INSERT INTO keys_test VALUES('AdventureWorks2017','Sales','SalesOrderDetail','SalesOrderDetailID',1,0,1)
INSERT INTO keys_test VALUES('AdventureWorks2017','Sales','SalesOrderDetail','ProductID',0,1,0)
INSERT INTO keys_test VALUES('AdventureWorks2017','Sales','SalesOrderDetail','SpecialOfferID',0,1,0)
INSERT INTO keys_test VALUES('AdventureWorks2017','Sales','SalesOrderHeader','SalesOrderID',0,0,1)
INSERT INTO keys_test VALUES('AdventureWorks2017','Sales','SalesOrderHeader','SalesOrderNumber',1,0,0)
INSERT INTO keys_test VALUES('AdventureWorks2017','Sales','SalesOrderHeader','BillToAddressID',0,1,0)
INSERT INTO keys_test VALUES('AdventureWorks2017','Sales','SalesOrderHeader','ShipToAddressID',0,1,0)
INSERT INTO keys_test VALUES('AdventureWorks2017','Sales','SalesOrderHeader','CreditCardID',0,1,0)
INSERT INTO keys_test VALUES('AdventureWorks2017','Sales','SalesOrderHeader','CurrencyRateID',0,1,0)
INSERT INTO keys_test VALUES('AdventureWorks2017','Sales','SalesOrderHeader','CustomerID',0,1,0)
INSERT INTO keys_test VALUES('AdventureWorks2017','Sales','SalesOrderHeader','SalesPersonID',0,1,0)
INSERT INTO keys_test VALUES('AdventureWorks2017','Sales','SalesOrderHeader','TerritoryID',0,1,0)
INSERT INTO keys_test VALUES('AdventureWorks2017','Sales','SalesOrderHeader','ShipMethodID',0,1,0)
INSERT INTO keys_test VALUES('AdventureWorks2017','Sales','SalesOrderHeaderSalesReason','SalesOrderID',0,1,1)
INSERT INTO keys_test VALUES('AdventureWorks2017','Sales','SalesOrderHeaderSalesReason','SalesReasonID',0,1,1)
INSERT INTO keys_test VALUES('AdventureWorks2017','Sales','SalesPerson','BusinessEntityID',0,1,1)
INSERT INTO keys_test VALUES('AdventureWorks2017','Sales','SalesPerson','TerritoryID',0,1,0)
INSERT INTO keys_test VALUES('AdventureWorks2017','Sales','SalesPersonQuotaHistory','BusinessEntityID',1,1,1)
INSERT INTO keys_test VALUES('AdventureWorks2017','Sales','SalesPersonQuotaHistory','QuotaDate',1,0,1)
INSERT INTO keys_test VALUES('AdventureWorks2017','Sales','SalesReason','SalesReasonID',1,0,1)
INSERT INTO keys_test VALUES('AdventureWorks2017','Sales','SalesTaxRate','SalesTaxRateID',1,0,1)
INSERT INTO keys_test VALUES('AdventureWorks2017','Sales','SalesTaxRate','StateProvinceID',0,1,0)
INSERT INTO keys_test VALUES('AdventureWorks2017','Sales','SalesTerritory','TerritoryID',1,0,1)
INSERT INTO keys_test VALUES('AdventureWorks2017','Sales','SalesTerritory','CountryRegionCode',0,1,0)
INSERT INTO keys_test VALUES('AdventureWorks2017','Sales','SalesTerritoryHistory','BusinessEntityID',1,1,1)
INSERT INTO keys_test VALUES('AdventureWorks2017','Sales','SalesTerritoryHistory','TerritoryID',1,1,1)
INSERT INTO keys_test VALUES('AdventureWorks2017','Sales','SalesTerritoryHistory','StartDate',1,0,1)
INSERT INTO keys_test VALUES('AdventureWorks2017','Sales','ShoppingCartItem','ShoppingCartItemID',1,0,1)
INSERT INTO keys_test VALUES('AdventureWorks2017','Sales','ShoppingCartItem','ProductID',0,1,0)
INSERT INTO keys_test VALUES('AdventureWorks2017','Sales','SpecialOffer','SpecialOfferID',1,0,1)
INSERT INTO keys_test VALUES('AdventureWorks2017','Sales','SpecialOfferProduct','SpecialOfferID',0,1,1)
INSERT INTO keys_test VALUES('AdventureWorks2017','Sales','SpecialOfferProduct','ProductID',0,1,1)
INSERT INTO keys_test VALUES('AdventureWorks2017','Sales','Store','BusinessEntityID',0,1,1)
INSERT INTO keys_test VALUES('AdventureWorks2017','Sales','Store','SalesPersonID',0,1,0)


-- Setting up some humanmade metadata about descriptive column data


IF OBJECT_ID('column_data_test', 'u') IS NOT NULL 
  DROP TABLE column_data_test;

  CREATE TABLE column_data_test (
       [TABLE_CATALOG] nvarchar(128)
      ,[TABLE_SCHEMA] nvarchar(128)
      ,[TABLE_NAME] nvarchar(128)
      ,[COLUMN_NAME] nvarchar(128)
	  ,[CONTAINS_ID] int
	  ,[CONTAINS_NAME] int
	  ,[CONTAINS_NUMBER] int
	  ,[CONTAINS_NODE] int
	  ,[CONTAINS_KEY] int
	  ,[COLUMN_NAME_LENGTH]  int
 ); 

INSERT INTO column_data_test VALUES('AdventureWorks2017','dbo','AWBuildVersion','Database Version',0,0,0,0,0,16)
INSERT INTO column_data_test VALUES('AdventureWorks2017','dbo','AWBuildVersion','ModifiedDate',0,0,0,0,0,12)
INSERT INTO column_data_test VALUES('AdventureWorks2017','dbo','AWBuildVersion','SystemInformationID',1,0,0,0,0,19)
INSERT INTO column_data_test VALUES('AdventureWorks2017','dbo','AWBuildVersion','VersionDate',0,0,0,0,0,11)
INSERT INTO column_data_test VALUES('AdventureWorks2017','dbo','DatabaseLog','DatabaseLogID',1,0,0,0,0,13)
INSERT INTO column_data_test VALUES('AdventureWorks2017','dbo','DatabaseLog','DatabaseUser',0,0,0,0,0,12)
INSERT INTO column_data_test VALUES('AdventureWorks2017','dbo','DatabaseLog','Event',0,0,0,0,0,5)
INSERT INTO column_data_test VALUES('AdventureWorks2017','dbo','DatabaseLog','Object',0,0,0,0,0,6)
INSERT INTO column_data_test VALUES('AdventureWorks2017','dbo','DatabaseLog','PostTime',0,0,0,0,0,8)
INSERT INTO column_data_test VALUES('AdventureWorks2017','dbo','DatabaseLog','Schema',0,0,0,0,0,6)
INSERT INTO column_data_test VALUES('AdventureWorks2017','dbo','DatabaseLog','TSQL',0,0,0,0,0,4)
INSERT INTO column_data_test VALUES('AdventureWorks2017','dbo','DatabaseLog','XmlEvent',0,0,0,0,0,8)
INSERT INTO column_data_test VALUES('AdventureWorks2017','dbo','ErrorLog','ErrorLine',0,0,0,0,0,9)
INSERT INTO column_data_test VALUES('AdventureWorks2017','dbo','ErrorLog','ErrorLogID',1,0,0,0,0,10)
INSERT INTO column_data_test VALUES('AdventureWorks2017','dbo','ErrorLog','ErrorMessage',0,0,0,0,0,12)
INSERT INTO column_data_test VALUES('AdventureWorks2017','dbo','ErrorLog','ErrorNumber',0,0,1,0,0,11)
INSERT INTO column_data_test VALUES('AdventureWorks2017','dbo','ErrorLog','ErrorProcedure',0,0,0,0,0,14)
INSERT INTO column_data_test VALUES('AdventureWorks2017','dbo','ErrorLog','ErrorSeverity',0,0,0,0,0,13)
INSERT INTO column_data_test VALUES('AdventureWorks2017','dbo','ErrorLog','ErrorState',0,0,0,0,0,10)
INSERT INTO column_data_test VALUES('AdventureWorks2017','dbo','ErrorLog','ErrorTime',0,0,0,0,0,9)
INSERT INTO column_data_test VALUES('AdventureWorks2017','dbo','ErrorLog','UserName',0,1,0,0,0,8)
INSERT INTO column_data_test VALUES('AdventureWorks2017','dbo','sysdiagrams','definition',0,0,0,0,0,10)
INSERT INTO column_data_test VALUES('AdventureWorks2017','dbo','sysdiagrams','diagram_id',1,0,0,0,0,10)
INSERT INTO column_data_test VALUES('AdventureWorks2017','dbo','sysdiagrams','name',0,1,0,0,0,4)
INSERT INTO column_data_test VALUES('AdventureWorks2017','dbo','sysdiagrams','principal_id',1,0,0,0,0,12)
INSERT INTO column_data_test VALUES('AdventureWorks2017','dbo','sysdiagrams','version',0,0,0,0,0,7)
INSERT INTO column_data_test VALUES('AdventureWorks2017','HumanResources','Department','DepartmentID',1,0,0,0,0,12)
INSERT INTO column_data_test VALUES('AdventureWorks2017','HumanResources','Department','GroupName',0,1,0,0,0,9)
INSERT INTO column_data_test VALUES('AdventureWorks2017','HumanResources','Department','ModifiedDate',0,0,0,0,0,12)
INSERT INTO column_data_test VALUES('AdventureWorks2017','HumanResources','Department','Name',0,1,0,0,0,4)
INSERT INTO column_data_test VALUES('AdventureWorks2017','HumanResources','Employee','BirthDate',0,0,0,0,0,9)
INSERT INTO column_data_test VALUES('AdventureWorks2017','HumanResources','Employee','BusinessEntityID',1,0,0,0,0,16)
INSERT INTO column_data_test VALUES('AdventureWorks2017','HumanResources','Employee','CurrentFlag',0,0,0,0,0,11)
INSERT INTO column_data_test VALUES('AdventureWorks2017','HumanResources','Employee','Gender',0,0,0,0,0,6)
INSERT INTO column_data_test VALUES('AdventureWorks2017','HumanResources','Employee','HireDate',0,0,0,0,0,8)
INSERT INTO column_data_test VALUES('AdventureWorks2017','HumanResources','Employee','JobTitle',0,0,0,0,0,8)
INSERT INTO column_data_test VALUES('AdventureWorks2017','HumanResources','Employee','LoginID',1,0,0,0,0,7)
INSERT INTO column_data_test VALUES('AdventureWorks2017','HumanResources','Employee','MaritalStatus',0,0,0,0,0,13)
INSERT INTO column_data_test VALUES('AdventureWorks2017','HumanResources','Employee','ModifiedDate',0,0,0,0,0,12)
INSERT INTO column_data_test VALUES('AdventureWorks2017','HumanResources','Employee','NationalIDNumber',1,0,1,0,0,16)
INSERT INTO column_data_test VALUES('AdventureWorks2017','HumanResources','Employee','OrganizationLevel',0,0,0,0,0,17)
INSERT INTO column_data_test VALUES('AdventureWorks2017','HumanResources','Employee','OrganizationNode',0,0,0,1,0,16)
INSERT INTO column_data_test VALUES('AdventureWorks2017','HumanResources','Employee','rowguid',1,0,0,0,0,7)
INSERT INTO column_data_test VALUES('AdventureWorks2017','HumanResources','Employee','SalariedFlag',0,0,0,0,0,12)
INSERT INTO column_data_test VALUES('AdventureWorks2017','HumanResources','Employee','SickLeaveHours',0,0,0,0,0,14)
INSERT INTO column_data_test VALUES('AdventureWorks2017','HumanResources','Employee','VacationHours',0,0,0,0,0,13)
INSERT INTO column_data_test VALUES('AdventureWorks2017','HumanResources','EmployeeDepartmentHistory','BusinessEntityID',1,0,0,0,0,16)
INSERT INTO column_data_test VALUES('AdventureWorks2017','HumanResources','EmployeeDepartmentHistory','DepartmentID',1,0,0,0,0,12)
INSERT INTO column_data_test VALUES('AdventureWorks2017','HumanResources','EmployeeDepartmentHistory','EndDate',0,0,0,0,0,7)
INSERT INTO column_data_test VALUES('AdventureWorks2017','HumanResources','EmployeeDepartmentHistory','ModifiedDate',0,0,0,0,0,12)
INSERT INTO column_data_test VALUES('AdventureWorks2017','HumanResources','EmployeeDepartmentHistory','ShiftID',1,0,0,0,0,7)
INSERT INTO column_data_test VALUES('AdventureWorks2017','HumanResources','EmployeeDepartmentHistory','StartDate',0,0,0,0,0,9)
INSERT INTO column_data_test VALUES('AdventureWorks2017','HumanResources','EmployeePayHistory','BusinessEntityID',1,0,0,0,0,16)
INSERT INTO column_data_test VALUES('AdventureWorks2017','HumanResources','EmployeePayHistory','ModifiedDate',0,0,0,0,0,12)
INSERT INTO column_data_test VALUES('AdventureWorks2017','HumanResources','EmployeePayHistory','PayFrequency',0,0,0,0,0,12)
INSERT INTO column_data_test VALUES('AdventureWorks2017','HumanResources','EmployeePayHistory','Rate',0,0,0,0,0,4)
INSERT INTO column_data_test VALUES('AdventureWorks2017','HumanResources','EmployeePayHistory','RateChangeDate',0,0,0,0,0,14)
INSERT INTO column_data_test VALUES('AdventureWorks2017','HumanResources','JobCandidate','BusinessEntityID',1,0,0,0,0,16)
INSERT INTO column_data_test VALUES('AdventureWorks2017','HumanResources','JobCandidate','JobCandidateID',1,0,0,0,0,14)
INSERT INTO column_data_test VALUES('AdventureWorks2017','HumanResources','JobCandidate','ModifiedDate',0,0,0,0,0,12)
INSERT INTO column_data_test VALUES('AdventureWorks2017','HumanResources','JobCandidate','Resume',0,0,0,0,0,6)
INSERT INTO column_data_test VALUES('AdventureWorks2017','HumanResources','Shift','EndTime',0,0,0,0,0,7)
INSERT INTO column_data_test VALUES('AdventureWorks2017','HumanResources','Shift','ModifiedDate',0,0,0,0,0,12)
INSERT INTO column_data_test VALUES('AdventureWorks2017','HumanResources','Shift','Name',0,1,0,0,0,4)
INSERT INTO column_data_test VALUES('AdventureWorks2017','HumanResources','Shift','ShiftID',1,0,0,0,0,7)
INSERT INTO column_data_test VALUES('AdventureWorks2017','HumanResources','Shift','StartTime',0,0,0,0,0,9)
INSERT INTO column_data_test VALUES('AdventureWorks2017','Person','Address','AddressID',1,0,0,0,0,9)
INSERT INTO column_data_test VALUES('AdventureWorks2017','Person','Address','AddressLine1',0,0,0,0,0,12)
INSERT INTO column_data_test VALUES('AdventureWorks2017','Person','Address','AddressLine2',0,0,0,0,0,12)
INSERT INTO column_data_test VALUES('AdventureWorks2017','Person','Address','City',0,0,0,0,0,4)
INSERT INTO column_data_test VALUES('AdventureWorks2017','Person','Address','ModifiedDate',0,0,0,0,0,12)
INSERT INTO column_data_test VALUES('AdventureWorks2017','Person','Address','PostalCode',0,0,0,0,0,10)
INSERT INTO column_data_test VALUES('AdventureWorks2017','Person','Address','rowguid',1,0,0,0,0,7)
INSERT INTO column_data_test VALUES('AdventureWorks2017','Person','Address','SpatialLocation',0,0,0,0,0,15)
INSERT INTO column_data_test VALUES('AdventureWorks2017','Person','Address','StateProvinceID',1,0,0,0,0,15)
INSERT INTO column_data_test VALUES('AdventureWorks2017','Person','AddressType','AddressTypeID',1,0,0,0,0,13)
INSERT INTO column_data_test VALUES('AdventureWorks2017','Person','AddressType','ModifiedDate',0,0,0,0,0,12)
INSERT INTO column_data_test VALUES('AdventureWorks2017','Person','AddressType','Name',0,1,0,0,0,4)
INSERT INTO column_data_test VALUES('AdventureWorks2017','Person','AddressType','rowguid',1,0,0,0,0,7)
INSERT INTO column_data_test VALUES('AdventureWorks2017','Person','BusinessEntity','BusinessEntityID',1,0,0,0,0,16)
INSERT INTO column_data_test VALUES('AdventureWorks2017','Person','BusinessEntity','ModifiedDate',0,0,0,0,0,12)
INSERT INTO column_data_test VALUES('AdventureWorks2017','Person','BusinessEntity','rowguid',1,0,0,0,0,7)
INSERT INTO column_data_test VALUES('AdventureWorks2017','Person','BusinessEntityAddress','AddressID',1,0,0,0,0,9)
INSERT INTO column_data_test VALUES('AdventureWorks2017','Person','BusinessEntityAddress','AddressTypeID',1,0,0,0,0,13)
INSERT INTO column_data_test VALUES('AdventureWorks2017','Person','BusinessEntityAddress','BusinessEntityID',1,0,0,0,0,16)
INSERT INTO column_data_test VALUES('AdventureWorks2017','Person','BusinessEntityAddress','ModifiedDate',0,0,0,0,0,12)
INSERT INTO column_data_test VALUES('AdventureWorks2017','Person','BusinessEntityAddress','rowguid',1,0,0,0,0,7)
INSERT INTO column_data_test VALUES('AdventureWorks2017','Person','BusinessEntityContact','BusinessEntityID',1,0,0,0,0,16)
INSERT INTO column_data_test VALUES('AdventureWorks2017','Person','BusinessEntityContact','ContactTypeID',1,0,0,0,0,13)
INSERT INTO column_data_test VALUES('AdventureWorks2017','Person','BusinessEntityContact','ModifiedDate',0,0,0,0,0,12)
INSERT INTO column_data_test VALUES('AdventureWorks2017','Person','BusinessEntityContact','PersonID',1,0,0,0,0,8)
INSERT INTO column_data_test VALUES('AdventureWorks2017','Person','BusinessEntityContact','rowguid',1,0,0,0,0,7)
INSERT INTO column_data_test VALUES('AdventureWorks2017','Person','ContactType','ContactTypeID',1,0,0,0,0,13)
INSERT INTO column_data_test VALUES('AdventureWorks2017','Person','ContactType','ModifiedDate',0,0,0,0,0,12)
INSERT INTO column_data_test VALUES('AdventureWorks2017','Person','ContactType','Name',0,1,0,0,0,4)
INSERT INTO column_data_test VALUES('AdventureWorks2017','Person','CountryRegion','CountryRegionCode',0,0,0,0,0,17)
INSERT INTO column_data_test VALUES('AdventureWorks2017','Person','CountryRegion','ModifiedDate',0,0,0,0,0,12)
INSERT INTO column_data_test VALUES('AdventureWorks2017','Person','CountryRegion','Name',0,1,0,0,0,4)
INSERT INTO column_data_test VALUES('AdventureWorks2017','Person','EmailAddress','BusinessEntityID',1,0,0,0,0,16)
INSERT INTO column_data_test VALUES('AdventureWorks2017','Person','EmailAddress','EmailAddress',0,0,0,0,0,12)
INSERT INTO column_data_test VALUES('AdventureWorks2017','Person','EmailAddress','EmailAddressID',1,0,0,0,0,14)
INSERT INTO column_data_test VALUES('AdventureWorks2017','Person','EmailAddress','ModifiedDate',0,0,0,0,0,12)
INSERT INTO column_data_test VALUES('AdventureWorks2017','Person','EmailAddress','rowguid',1,0,0,0,0,7)
INSERT INTO column_data_test VALUES('AdventureWorks2017','Person','Password','BusinessEntityID',1,0,0,0,0,16)
INSERT INTO column_data_test VALUES('AdventureWorks2017','Person','Password','ModifiedDate',0,0,0,0,0,12)
INSERT INTO column_data_test VALUES('AdventureWorks2017','Person','Password','PasswordHash',0,0,0,0,0,12)
INSERT INTO column_data_test VALUES('AdventureWorks2017','Person','Password','PasswordSalt',0,0,0,0,0,12)
INSERT INTO column_data_test VALUES('AdventureWorks2017','Person','Password','rowguid',1,0,0,0,0,7)
INSERT INTO column_data_test VALUES('AdventureWorks2017','Person','Person','AdditionalContactInfo',0,0,0,0,0,21)
INSERT INTO column_data_test VALUES('AdventureWorks2017','Person','Person','BusinessEntityID',1,0,0,0,0,16)
INSERT INTO column_data_test VALUES('AdventureWorks2017','Person','Person','Demographics',0,0,0,0,0,12)
INSERT INTO column_data_test VALUES('AdventureWorks2017','Person','Person','EmailPromotion',0,0,0,0,0,14)
INSERT INTO column_data_test VALUES('AdventureWorks2017','Person','Person','FirstName',0,1,0,0,0,9)
INSERT INTO column_data_test VALUES('AdventureWorks2017','Person','Person','LastName',0,1,0,0,0,8)
INSERT INTO column_data_test VALUES('AdventureWorks2017','Person','Person','MiddleName',1,1,0,0,0,10)
INSERT INTO column_data_test VALUES('AdventureWorks2017','Person','Person','ModifiedDate',0,0,0,0,0,12)
INSERT INTO column_data_test VALUES('AdventureWorks2017','Person','Person','NameStyle',0,1,0,0,0,9)
INSERT INTO column_data_test VALUES('AdventureWorks2017','Person','Person','PersonType',0,0,0,0,0,10)
INSERT INTO column_data_test VALUES('AdventureWorks2017','Person','Person','rowguid',1,0,0,0,0,7)
INSERT INTO column_data_test VALUES('AdventureWorks2017','Person','Person','Suffix',0,0,0,0,0,6)
INSERT INTO column_data_test VALUES('AdventureWorks2017','Person','Person','Title',0,0,0,0,0,5)
INSERT INTO column_data_test VALUES('AdventureWorks2017','Person','PersonPhone','BusinessEntityID',1,0,0,0,0,16)
INSERT INTO column_data_test VALUES('AdventureWorks2017','Person','PersonPhone','ModifiedDate',0,0,0,0,0,12)
INSERT INTO column_data_test VALUES('AdventureWorks2017','Person','PersonPhone','PhoneNumber',0,0,1,0,0,11)
INSERT INTO column_data_test VALUES('AdventureWorks2017','Person','PersonPhone','PhoneNumberTypeID',1,0,1,0,0,17)
INSERT INTO column_data_test VALUES('AdventureWorks2017','Person','PhoneNumberType','ModifiedDate',0,0,0,0,0,12)
INSERT INTO column_data_test VALUES('AdventureWorks2017','Person','PhoneNumberType','Name',0,1,0,0,0,4)
INSERT INTO column_data_test VALUES('AdventureWorks2017','Person','PhoneNumberType','PhoneNumberTypeID',1,0,1,0,0,17)
INSERT INTO column_data_test VALUES('AdventureWorks2017','Person','StateProvince','CountryRegionCode',0,0,0,0,0,17)
INSERT INTO column_data_test VALUES('AdventureWorks2017','Person','StateProvince','IsOnlyStateProvinceFlag',0,0,0,0,0,23)
INSERT INTO column_data_test VALUES('AdventureWorks2017','Person','StateProvince','ModifiedDate',0,0,0,0,0,12)
INSERT INTO column_data_test VALUES('AdventureWorks2017','Person','StateProvince','Name',0,1,0,0,0,4)
INSERT INTO column_data_test VALUES('AdventureWorks2017','Person','StateProvince','rowguid',1,0,0,0,0,7)
INSERT INTO column_data_test VALUES('AdventureWorks2017','Person','StateProvince','StateProvinceCode',0,0,0,0,0,17)
INSERT INTO column_data_test VALUES('AdventureWorks2017','Person','StateProvince','StateProvinceID',1,0,0,0,0,15)
INSERT INTO column_data_test VALUES('AdventureWorks2017','Person','StateProvince','TerritoryID',1,0,0,0,0,11)
INSERT INTO column_data_test VALUES('AdventureWorks2017','Production','BillOfMaterials','BillOfMaterialsID',1,0,0,0,0,17)
INSERT INTO column_data_test VALUES('AdventureWorks2017','Production','BillOfMaterials','BOMLevel',0,0,0,0,0,8)
INSERT INTO column_data_test VALUES('AdventureWorks2017','Production','BillOfMaterials','ComponentID',1,0,0,0,0,11)
INSERT INTO column_data_test VALUES('AdventureWorks2017','Production','BillOfMaterials','EndDate',0,0,0,0,0,7)
INSERT INTO column_data_test VALUES('AdventureWorks2017','Production','BillOfMaterials','ModifiedDate',0,0,0,0,0,12)
INSERT INTO column_data_test VALUES('AdventureWorks2017','Production','BillOfMaterials','PerAssemblyQty',0,0,0,0,0,14)
INSERT INTO column_data_test VALUES('AdventureWorks2017','Production','BillOfMaterials','ProductAssemblyID',1,0,0,0,0,17)
INSERT INTO column_data_test VALUES('AdventureWorks2017','Production','BillOfMaterials','StartDate',0,0,0,0,0,9)
INSERT INTO column_data_test VALUES('AdventureWorks2017','Production','BillOfMaterials','UnitMeasureCode',0,0,0,0,0,15)
INSERT INTO column_data_test VALUES('AdventureWorks2017','Production','Culture','CultureID',1,0,0,0,0,9)
INSERT INTO column_data_test VALUES('AdventureWorks2017','Production','Culture','ModifiedDate',0,0,0,0,0,12)
INSERT INTO column_data_test VALUES('AdventureWorks2017','Production','Culture','Name',0,1,0,0,0,4)
INSERT INTO column_data_test VALUES('AdventureWorks2017','Production','Document','ChangeNumber',0,0,1,0,0,12)
INSERT INTO column_data_test VALUES('AdventureWorks2017','Production','Document','Document',0,0,0,0,0,8)
INSERT INTO column_data_test VALUES('AdventureWorks2017','Production','Document','DocumentLevel',0,0,0,0,0,13)
INSERT INTO column_data_test VALUES('AdventureWorks2017','Production','Document','DocumentNode',0,0,0,1,0,12)
INSERT INTO column_data_test VALUES('AdventureWorks2017','Production','Document','DocumentSummary',0,0,0,0,0,15)
INSERT INTO column_data_test VALUES('AdventureWorks2017','Production','Document','FileExtension',0,0,0,0,0,13)
INSERT INTO column_data_test VALUES('AdventureWorks2017','Production','Document','FileName',0,1,0,0,0,8)
INSERT INTO column_data_test VALUES('AdventureWorks2017','Production','Document','FolderFlag',0,0,0,0,0,10)
INSERT INTO column_data_test VALUES('AdventureWorks2017','Production','Document','ModifiedDate',0,0,0,0,0,12)
INSERT INTO column_data_test VALUES('AdventureWorks2017','Production','Document','Owner',0,0,0,0,0,5)
INSERT INTO column_data_test VALUES('AdventureWorks2017','Production','Document','Revision',0,0,0,0,0,8)
INSERT INTO column_data_test VALUES('AdventureWorks2017','Production','Document','rowguid',1,0,0,0,0,7)
INSERT INTO column_data_test VALUES('AdventureWorks2017','Production','Document','Status',0,0,0,0,0,6)
INSERT INTO column_data_test VALUES('AdventureWorks2017','Production','Document','Title',0,0,0,0,0,5)
INSERT INTO column_data_test VALUES('AdventureWorks2017','Production','Illustration','Diagram',0,0,0,0,0,7)
INSERT INTO column_data_test VALUES('AdventureWorks2017','Production','Illustration','IllustrationID',1,0,0,0,0,14)
INSERT INTO column_data_test VALUES('AdventureWorks2017','Production','Illustration','ModifiedDate',0,0,0,0,0,12)
INSERT INTO column_data_test VALUES('AdventureWorks2017','Production','Location','Availability',0,0,0,0,0,12)
INSERT INTO column_data_test VALUES('AdventureWorks2017','Production','Location','CostRate',0,0,0,0,0,8)
INSERT INTO column_data_test VALUES('AdventureWorks2017','Production','Location','LocationID',1,0,0,0,0,10)
INSERT INTO column_data_test VALUES('AdventureWorks2017','Production','Location','ModifiedDate',0,0,0,0,0,12)
INSERT INTO column_data_test VALUES('AdventureWorks2017','Production','Location','Name',0,1,0,0,0,4)
INSERT INTO column_data_test VALUES('AdventureWorks2017','Production','Product','Class',0,0,0,0,0,5)
INSERT INTO column_data_test VALUES('AdventureWorks2017','Production','Product','Color',0,0,0,0,0,5)
INSERT INTO column_data_test VALUES('AdventureWorks2017','Production','Product','DaysToManufacture',0,0,0,0,0,17)
INSERT INTO column_data_test VALUES('AdventureWorks2017','Production','Product','DiscontinuedDate',0,0,0,0,0,16)
INSERT INTO column_data_test VALUES('AdventureWorks2017','Production','Product','FinishedGoodsFlag',0,0,0,0,0,17)
INSERT INTO column_data_test VALUES('AdventureWorks2017','Production','Product','ListPrice',0,0,0,0,0,9)
INSERT INTO column_data_test VALUES('AdventureWorks2017','Production','Product','MakeFlag',0,0,0,0,0,8)
INSERT INTO column_data_test VALUES('AdventureWorks2017','Production','Product','ModifiedDate',0,0,0,0,0,12)
INSERT INTO column_data_test VALUES('AdventureWorks2017','Production','Product','Name',0,1,0,0,0,4)
INSERT INTO column_data_test VALUES('AdventureWorks2017','Production','Product','ProductID',1,0,0,0,0,9)
INSERT INTO column_data_test VALUES('AdventureWorks2017','Production','Product','ProductLine',0,0,0,0,0,11)
INSERT INTO column_data_test VALUES('AdventureWorks2017','Production','Product','ProductModelID',1,0,0,0,0,14)
INSERT INTO column_data_test VALUES('AdventureWorks2017','Production','Product','ProductNumber',0,0,1,0,0,13)
INSERT INTO column_data_test VALUES('AdventureWorks2017','Production','Product','ProductSubcategoryID',1,0,0,0,0,20)
INSERT INTO column_data_test VALUES('AdventureWorks2017','Production','Product','ReorderPoint',0,0,0,0,0,12)
INSERT INTO column_data_test VALUES('AdventureWorks2017','Production','Product','rowguid',1,0,0,0,0,7)
INSERT INTO column_data_test VALUES('AdventureWorks2017','Production','Product','SafetyStockLevel',0,0,0,0,0,16)
INSERT INTO column_data_test VALUES('AdventureWorks2017','Production','Product','SellEndDate',0,0,0,0,0,11)
INSERT INTO column_data_test VALUES('AdventureWorks2017','Production','Product','SellStartDate',0,0,0,0,0,13)
INSERT INTO column_data_test VALUES('AdventureWorks2017','Production','Product','Size',0,0,0,0,0,4)
INSERT INTO column_data_test VALUES('AdventureWorks2017','Production','Product','SizeUnitMeasureCode',0,0,0,0,0,19)
INSERT INTO column_data_test VALUES('AdventureWorks2017','Production','Product','StandardCost',0,0,0,0,0,12)
INSERT INTO column_data_test VALUES('AdventureWorks2017','Production','Product','Style',0,0,0,0,0,5)
INSERT INTO column_data_test VALUES('AdventureWorks2017','Production','Product','Weight',0,0,0,0,0,6)
INSERT INTO column_data_test VALUES('AdventureWorks2017','Production','Product','WeightUnitMeasureCode',0,0,0,0,0,21)
INSERT INTO column_data_test VALUES('AdventureWorks2017','Production','ProductCategory','ModifiedDate',0,0,0,0,0,12)
INSERT INTO column_data_test VALUES('AdventureWorks2017','Production','ProductCategory','Name',0,1,0,0,0,4)
INSERT INTO column_data_test VALUES('AdventureWorks2017','Production','ProductCategory','ProductCategoryID',1,0,0,0,0,17)
INSERT INTO column_data_test VALUES('AdventureWorks2017','Production','ProductCategory','rowguid',1,0,0,0,0,7)
INSERT INTO column_data_test VALUES('AdventureWorks2017','Production','ProductCostHistory','EndDate',0,0,0,0,0,7)
INSERT INTO column_data_test VALUES('AdventureWorks2017','Production','ProductCostHistory','ModifiedDate',0,0,0,0,0,12)
INSERT INTO column_data_test VALUES('AdventureWorks2017','Production','ProductCostHistory','ProductID',1,0,0,0,0,9)
INSERT INTO column_data_test VALUES('AdventureWorks2017','Production','ProductCostHistory','StandardCost',0,0,0,0,0,12)
INSERT INTO column_data_test VALUES('AdventureWorks2017','Production','ProductCostHistory','StartDate',0,0,0,0,0,9)
INSERT INTO column_data_test VALUES('AdventureWorks2017','Production','ProductDescription','Description',0,0,0,0,0,11)
INSERT INTO column_data_test VALUES('AdventureWorks2017','Production','ProductDescription','ModifiedDate',0,0,0,0,0,12)
INSERT INTO column_data_test VALUES('AdventureWorks2017','Production','ProductDescription','ProductDescriptionID',1,0,0,0,0,20)
INSERT INTO column_data_test VALUES('AdventureWorks2017','Production','ProductDescription','rowguid',1,0,0,0,0,7)
INSERT INTO column_data_test VALUES('AdventureWorks2017','Production','ProductDocument','DocumentNode',0,0,0,1,0,12)
INSERT INTO column_data_test VALUES('AdventureWorks2017','Production','ProductDocument','ModifiedDate',0,0,0,0,0,12)
INSERT INTO column_data_test VALUES('AdventureWorks2017','Production','ProductDocument','ProductID',1,0,0,0,0,9)
INSERT INTO column_data_test VALUES('AdventureWorks2017','Production','ProductInventory','Bin',0,0,0,0,0,3)
INSERT INTO column_data_test VALUES('AdventureWorks2017','Production','ProductInventory','LocationID',1,0,0,0,0,10)
INSERT INTO column_data_test VALUES('AdventureWorks2017','Production','ProductInventory','ModifiedDate',0,0,0,0,0,12)
INSERT INTO column_data_test VALUES('AdventureWorks2017','Production','ProductInventory','ProductID',1,0,0,0,0,9)
INSERT INTO column_data_test VALUES('AdventureWorks2017','Production','ProductInventory','Quantity',0,0,0,0,0,8)
INSERT INTO column_data_test VALUES('AdventureWorks2017','Production','ProductInventory','rowguid',1,0,0,0,0,7)
INSERT INTO column_data_test VALUES('AdventureWorks2017','Production','ProductInventory','Shelf',0,0,0,0,0,5)
INSERT INTO column_data_test VALUES('AdventureWorks2017','Production','ProductListPriceHistory','EndDate',0,0,0,0,0,7)
INSERT INTO column_data_test VALUES('AdventureWorks2017','Production','ProductListPriceHistory','ListPrice',0,0,0,0,0,9)
INSERT INTO column_data_test VALUES('AdventureWorks2017','Production','ProductListPriceHistory','ModifiedDate',0,0,0,0,0,12)
INSERT INTO column_data_test VALUES('AdventureWorks2017','Production','ProductListPriceHistory','ProductID',1,0,0,0,0,9)
INSERT INTO column_data_test VALUES('AdventureWorks2017','Production','ProductListPriceHistory','StartDate',0,0,0,0,0,9)
INSERT INTO column_data_test VALUES('AdventureWorks2017','Production','ProductModel','CatalogDescription',0,0,0,0,0,18)
INSERT INTO column_data_test VALUES('AdventureWorks2017','Production','ProductModel','Instructions',0,0,0,0,0,12)
INSERT INTO column_data_test VALUES('AdventureWorks2017','Production','ProductModel','ModifiedDate',0,0,0,0,0,12)
INSERT INTO column_data_test VALUES('AdventureWorks2017','Production','ProductModel','Name',0,1,0,0,0,4)
INSERT INTO column_data_test VALUES('AdventureWorks2017','Production','ProductModel','ProductModelID',1,0,0,0,0,14)
INSERT INTO column_data_test VALUES('AdventureWorks2017','Production','ProductModel','rowguid',1,0,0,0,0,7)
INSERT INTO column_data_test VALUES('AdventureWorks2017','Production','ProductModelIllustration','IllustrationID',1,0,0,0,0,14)
INSERT INTO column_data_test VALUES('AdventureWorks2017','Production','ProductModelIllustration','ModifiedDate',0,0,0,0,0,12)
INSERT INTO column_data_test VALUES('AdventureWorks2017','Production','ProductModelIllustration','ProductModelID',1,0,0,0,0,14)
INSERT INTO column_data_test VALUES('AdventureWorks2017','Production','ProductModelProductDescriptionCulture','CultureID',1,0,0,0,0,9)
INSERT INTO column_data_test VALUES('AdventureWorks2017','Production','ProductModelProductDescriptionCulture','ModifiedDate',0,0,0,0,0,12)
INSERT INTO column_data_test VALUES('AdventureWorks2017','Production','ProductModelProductDescriptionCulture','ProductDescriptionID',1,0,0,0,0,20)
INSERT INTO column_data_test VALUES('AdventureWorks2017','Production','ProductModelProductDescriptionCulture','ProductModelID',1,0,0,0,0,14)
INSERT INTO column_data_test VALUES('AdventureWorks2017','Production','ProductPhoto','LargePhoto',0,0,0,0,0,10)
INSERT INTO column_data_test VALUES('AdventureWorks2017','Production','ProductPhoto','LargePhotoFileName',0,1,0,0,0,18)
INSERT INTO column_data_test VALUES('AdventureWorks2017','Production','ProductPhoto','ModifiedDate',0,0,0,0,0,12)
INSERT INTO column_data_test VALUES('AdventureWorks2017','Production','ProductPhoto','ProductPhotoID',1,0,0,0,0,14)
INSERT INTO column_data_test VALUES('AdventureWorks2017','Production','ProductPhoto','ThumbNailPhoto',0,0,0,0,0,14)
INSERT INTO column_data_test VALUES('AdventureWorks2017','Production','ProductPhoto','ThumbnailPhotoFileName',0,1,0,0,0,22)
INSERT INTO column_data_test VALUES('AdventureWorks2017','Production','ProductProductPhoto','ModifiedDate',0,0,0,0,0,12)
INSERT INTO column_data_test VALUES('AdventureWorks2017','Production','ProductProductPhoto','Primary',0,0,0,0,0,7)
INSERT INTO column_data_test VALUES('AdventureWorks2017','Production','ProductProductPhoto','ProductID',1,0,0,0,0,9)
INSERT INTO column_data_test VALUES('AdventureWorks2017','Production','ProductProductPhoto','ProductPhotoID',1,0,0,0,0,14)
INSERT INTO column_data_test VALUES('AdventureWorks2017','Production','ProductReview','Comments',0,0,0,0,0,8)
INSERT INTO column_data_test VALUES('AdventureWorks2017','Production','ProductReview','EmailAddress',0,0,0,0,0,12)
INSERT INTO column_data_test VALUES('AdventureWorks2017','Production','ProductReview','ModifiedDate',0,0,0,0,0,12)
INSERT INTO column_data_test VALUES('AdventureWorks2017','Production','ProductReview','ProductID',1,0,0,0,0,9)
INSERT INTO column_data_test VALUES('AdventureWorks2017','Production','ProductReview','ProductReviewID',1,0,0,0,0,15)
INSERT INTO column_data_test VALUES('AdventureWorks2017','Production','ProductReview','Rating',0,0,0,0,0,6)
INSERT INTO column_data_test VALUES('AdventureWorks2017','Production','ProductReview','ReviewDate',0,0,0,0,0,10)
INSERT INTO column_data_test VALUES('AdventureWorks2017','Production','ProductReview','ReviewerName',0,1,0,0,0,12)
INSERT INTO column_data_test VALUES('AdventureWorks2017','Production','ProductSubcategory','ModifiedDate',0,0,0,0,0,12)
INSERT INTO column_data_test VALUES('AdventureWorks2017','Production','ProductSubcategory','Name',0,1,0,0,0,4)
INSERT INTO column_data_test VALUES('AdventureWorks2017','Production','ProductSubcategory','ProductCategoryID',1,0,0,0,0,17)
INSERT INTO column_data_test VALUES('AdventureWorks2017','Production','ProductSubcategory','ProductSubcategoryID',1,0,0,0,0,20)
INSERT INTO column_data_test VALUES('AdventureWorks2017','Production','ProductSubcategory','rowguid',1,0,0,0,0,7)
INSERT INTO column_data_test VALUES('AdventureWorks2017','Production','ScrapReason','ModifiedDate',0,0,0,0,0,12)
INSERT INTO column_data_test VALUES('AdventureWorks2017','Production','ScrapReason','Name',0,1,0,0,0,4)
INSERT INTO column_data_test VALUES('AdventureWorks2017','Production','ScrapReason','ScrapReasonID',1,0,0,0,0,13)
INSERT INTO column_data_test VALUES('AdventureWorks2017','Production','TransactionHistory','ActualCost',0,0,0,0,0,10)
INSERT INTO column_data_test VALUES('AdventureWorks2017','Production','TransactionHistory','ModifiedDate',0,0,0,0,0,12)
INSERT INTO column_data_test VALUES('AdventureWorks2017','Production','TransactionHistory','ProductID',1,0,0,0,0,9)
INSERT INTO column_data_test VALUES('AdventureWorks2017','Production','TransactionHistory','Quantity',0,0,0,0,0,8)
INSERT INTO column_data_test VALUES('AdventureWorks2017','Production','TransactionHistory','ReferenceOrderID',1,0,0,0,0,16)
INSERT INTO column_data_test VALUES('AdventureWorks2017','Production','TransactionHistory','ReferenceOrderLineID',1,0,0,0,0,20)
INSERT INTO column_data_test VALUES('AdventureWorks2017','Production','TransactionHistory','TransactionDate',0,0,0,0,0,15)
INSERT INTO column_data_test VALUES('AdventureWorks2017','Production','TransactionHistory','TransactionID',1,0,0,0,0,13)
INSERT INTO column_data_test VALUES('AdventureWorks2017','Production','TransactionHistory','TransactionType',0,0,0,0,0,15)
INSERT INTO column_data_test VALUES('AdventureWorks2017','Production','TransactionHistoryArchive','ActualCost',0,0,0,0,0,10)
INSERT INTO column_data_test VALUES('AdventureWorks2017','Production','TransactionHistoryArchive','ModifiedDate',0,0,0,0,0,12)
INSERT INTO column_data_test VALUES('AdventureWorks2017','Production','TransactionHistoryArchive','ProductID',1,0,0,0,0,9)
INSERT INTO column_data_test VALUES('AdventureWorks2017','Production','TransactionHistoryArchive','Quantity',0,0,0,0,0,8)
INSERT INTO column_data_test VALUES('AdventureWorks2017','Production','TransactionHistoryArchive','ReferenceOrderID',1,0,0,0,0,16)
INSERT INTO column_data_test VALUES('AdventureWorks2017','Production','TransactionHistoryArchive','ReferenceOrderLineID',1,0,0,0,0,20)
INSERT INTO column_data_test VALUES('AdventureWorks2017','Production','TransactionHistoryArchive','TransactionDate',0,0,0,0,0,15)
INSERT INTO column_data_test VALUES('AdventureWorks2017','Production','TransactionHistoryArchive','TransactionID',1,0,0,0,0,13)
INSERT INTO column_data_test VALUES('AdventureWorks2017','Production','TransactionHistoryArchive','TransactionType',0,0,0,0,0,15)
INSERT INTO column_data_test VALUES('AdventureWorks2017','Production','UnitMeasure','ModifiedDate',0,0,0,0,0,12)
INSERT INTO column_data_test VALUES('AdventureWorks2017','Production','UnitMeasure','Name',0,1,0,0,0,4)
INSERT INTO column_data_test VALUES('AdventureWorks2017','Production','UnitMeasure','UnitMeasureCode',0,0,0,0,0,15)
INSERT INTO column_data_test VALUES('AdventureWorks2017','Production','WorkOrder','DueDate',0,0,0,0,0,7)
INSERT INTO column_data_test VALUES('AdventureWorks2017','Production','WorkOrder','EndDate',0,0,0,0,0,7)
INSERT INTO column_data_test VALUES('AdventureWorks2017','Production','WorkOrder','ModifiedDate',0,0,0,0,0,12)
INSERT INTO column_data_test VALUES('AdventureWorks2017','Production','WorkOrder','OrderQty',0,0,0,0,0,8)
INSERT INTO column_data_test VALUES('AdventureWorks2017','Production','WorkOrder','ProductID',1,0,0,0,0,9)
INSERT INTO column_data_test VALUES('AdventureWorks2017','Production','WorkOrder','ScrappedQty',0,0,0,0,0,11)
INSERT INTO column_data_test VALUES('AdventureWorks2017','Production','WorkOrder','ScrapReasonID',1,0,0,0,0,13)
INSERT INTO column_data_test VALUES('AdventureWorks2017','Production','WorkOrder','StartDate',0,0,0,0,0,9)
INSERT INTO column_data_test VALUES('AdventureWorks2017','Production','WorkOrder','StockedQty',0,0,0,0,0,10)
INSERT INTO column_data_test VALUES('AdventureWorks2017','Production','WorkOrder','WorkOrderID',1,0,0,0,0,11)
INSERT INTO column_data_test VALUES('AdventureWorks2017','Production','WorkOrderRouting','ActualCost',0,0,0,0,0,10)
INSERT INTO column_data_test VALUES('AdventureWorks2017','Production','WorkOrderRouting','ActualEndDate',0,0,0,0,0,13)
INSERT INTO column_data_test VALUES('AdventureWorks2017','Production','WorkOrderRouting','ActualResourceHrs',0,0,0,0,0,17)
INSERT INTO column_data_test VALUES('AdventureWorks2017','Production','WorkOrderRouting','ActualStartDate',0,0,0,0,0,15)
INSERT INTO column_data_test VALUES('AdventureWorks2017','Production','WorkOrderRouting','LocationID',1,0,0,0,0,10)
INSERT INTO column_data_test VALUES('AdventureWorks2017','Production','WorkOrderRouting','ModifiedDate',0,0,0,0,0,12)
INSERT INTO column_data_test VALUES('AdventureWorks2017','Production','WorkOrderRouting','OperationSequence',0,0,0,0,0,17)
INSERT INTO column_data_test VALUES('AdventureWorks2017','Production','WorkOrderRouting','PlannedCost',0,0,0,0,0,11)
INSERT INTO column_data_test VALUES('AdventureWorks2017','Production','WorkOrderRouting','ProductID',1,0,0,0,0,9)
INSERT INTO column_data_test VALUES('AdventureWorks2017','Production','WorkOrderRouting','ScheduledEndDate',0,0,0,0,0,16)
INSERT INTO column_data_test VALUES('AdventureWorks2017','Production','WorkOrderRouting','ScheduledStartDate',0,0,0,0,0,18)
INSERT INTO column_data_test VALUES('AdventureWorks2017','Production','WorkOrderRouting','WorkOrderID',1,0,0,0,0,11)
INSERT INTO column_data_test VALUES('AdventureWorks2017','Purchasing','ProductVendor','AverageLeadTime',0,0,0,0,0,15)
INSERT INTO column_data_test VALUES('AdventureWorks2017','Purchasing','ProductVendor','BusinessEntityID',1,0,0,0,0,16)
INSERT INTO column_data_test VALUES('AdventureWorks2017','Purchasing','ProductVendor','LastReceiptCost',0,0,0,0,0,15)
INSERT INTO column_data_test VALUES('AdventureWorks2017','Purchasing','ProductVendor','LastReceiptDate',0,0,0,0,0,15)
INSERT INTO column_data_test VALUES('AdventureWorks2017','Purchasing','ProductVendor','MaxOrderQty',0,0,0,0,0,11)
INSERT INTO column_data_test VALUES('AdventureWorks2017','Purchasing','ProductVendor','MinOrderQty',0,0,0,0,0,11)
INSERT INTO column_data_test VALUES('AdventureWorks2017','Purchasing','ProductVendor','ModifiedDate',0,0,0,0,0,12)
INSERT INTO column_data_test VALUES('AdventureWorks2017','Purchasing','ProductVendor','OnOrderQty',0,0,0,0,0,10)
INSERT INTO column_data_test VALUES('AdventureWorks2017','Purchasing','ProductVendor','ProductID',1,0,0,0,0,9)
INSERT INTO column_data_test VALUES('AdventureWorks2017','Purchasing','ProductVendor','StandardPrice',0,0,0,0,0,13)
INSERT INTO column_data_test VALUES('AdventureWorks2017','Purchasing','ProductVendor','UnitMeasureCode',0,0,0,0,0,15)
INSERT INTO column_data_test VALUES('AdventureWorks2017','Purchasing','PurchaseOrderDetail','DueDate',0,0,0,0,0,7)
INSERT INTO column_data_test VALUES('AdventureWorks2017','Purchasing','PurchaseOrderDetail','LineTotal',0,0,0,0,0,9)
INSERT INTO column_data_test VALUES('AdventureWorks2017','Purchasing','PurchaseOrderDetail','ModifiedDate',0,0,0,0,0,12)
INSERT INTO column_data_test VALUES('AdventureWorks2017','Purchasing','PurchaseOrderDetail','OrderQty',0,0,0,0,0,8)
INSERT INTO column_data_test VALUES('AdventureWorks2017','Purchasing','PurchaseOrderDetail','ProductID',1,0,0,0,0,9)
INSERT INTO column_data_test VALUES('AdventureWorks2017','Purchasing','PurchaseOrderDetail','PurchaseOrderDetailID',1,0,0,0,0,21)
INSERT INTO column_data_test VALUES('AdventureWorks2017','Purchasing','PurchaseOrderDetail','PurchaseOrderID',1,0,0,0,0,15)
INSERT INTO column_data_test VALUES('AdventureWorks2017','Purchasing','PurchaseOrderDetail','ReceivedQty',0,0,0,0,0,11)
INSERT INTO column_data_test VALUES('AdventureWorks2017','Purchasing','PurchaseOrderDetail','RejectedQty',0,0,0,0,0,11)
INSERT INTO column_data_test VALUES('AdventureWorks2017','Purchasing','PurchaseOrderDetail','StockedQty',0,0,0,0,0,10)
INSERT INTO column_data_test VALUES('AdventureWorks2017','Purchasing','PurchaseOrderDetail','UnitPrice',0,0,0,0,0,9)
INSERT INTO column_data_test VALUES('AdventureWorks2017','Purchasing','PurchaseOrderHeader','EmployeeID',1,0,0,0,0,10)
INSERT INTO column_data_test VALUES('AdventureWorks2017','Purchasing','PurchaseOrderHeader','Freight',0,0,0,0,0,7)
INSERT INTO column_data_test VALUES('AdventureWorks2017','Purchasing','PurchaseOrderHeader','ModifiedDate',0,0,0,0,0,12)
INSERT INTO column_data_test VALUES('AdventureWorks2017','Purchasing','PurchaseOrderHeader','OrderDate',0,0,0,0,0,9)
INSERT INTO column_data_test VALUES('AdventureWorks2017','Purchasing','PurchaseOrderHeader','PurchaseOrderID',1,0,0,0,0,15)
INSERT INTO column_data_test VALUES('AdventureWorks2017','Purchasing','PurchaseOrderHeader','RevisionNumber',0,0,1,0,0,14)
INSERT INTO column_data_test VALUES('AdventureWorks2017','Purchasing','PurchaseOrderHeader','ShipDate',0,0,0,0,0,8)
INSERT INTO column_data_test VALUES('AdventureWorks2017','Purchasing','PurchaseOrderHeader','ShipMethodID',1,0,0,0,0,12)
INSERT INTO column_data_test VALUES('AdventureWorks2017','Purchasing','PurchaseOrderHeader','Status',0,0,0,0,0,6)
INSERT INTO column_data_test VALUES('AdventureWorks2017','Purchasing','PurchaseOrderHeader','SubTotal',0,0,0,0,0,8)
INSERT INTO column_data_test VALUES('AdventureWorks2017','Purchasing','PurchaseOrderHeader','TaxAmt',0,0,0,0,0,6)
INSERT INTO column_data_test VALUES('AdventureWorks2017','Purchasing','PurchaseOrderHeader','TotalDue',0,0,0,0,0,8)
INSERT INTO column_data_test VALUES('AdventureWorks2017','Purchasing','PurchaseOrderHeader','VendorID',1,0,0,0,0,8)
INSERT INTO column_data_test VALUES('AdventureWorks2017','Purchasing','ShipMethod','ModifiedDate',0,0,0,0,0,12)
INSERT INTO column_data_test VALUES('AdventureWorks2017','Purchasing','ShipMethod','Name',0,1,0,0,0,4)
INSERT INTO column_data_test VALUES('AdventureWorks2017','Purchasing','ShipMethod','rowguid',1,0,0,0,0,7)
INSERT INTO column_data_test VALUES('AdventureWorks2017','Purchasing','ShipMethod','ShipBase',0,0,0,0,0,8)
INSERT INTO column_data_test VALUES('AdventureWorks2017','Purchasing','ShipMethod','ShipMethodID',1,0,0,0,0,12)
INSERT INTO column_data_test VALUES('AdventureWorks2017','Purchasing','ShipMethod','ShipRate',0,0,0,0,0,8)
INSERT INTO column_data_test VALUES('AdventureWorks2017','Purchasing','Vendor','AccountNumber',0,0,1,0,0,13)
INSERT INTO column_data_test VALUES('AdventureWorks2017','Purchasing','Vendor','ActiveFlag',0,0,0,0,0,10)
INSERT INTO column_data_test VALUES('AdventureWorks2017','Purchasing','Vendor','BusinessEntityID',1,0,0,0,0,16)
INSERT INTO column_data_test VALUES('AdventureWorks2017','Purchasing','Vendor','CreditRating',0,0,0,0,0,12)
INSERT INTO column_data_test VALUES('AdventureWorks2017','Purchasing','Vendor','ModifiedDate',0,0,0,0,0,12)
INSERT INTO column_data_test VALUES('AdventureWorks2017','Purchasing','Vendor','Name',0,1,0,0,0,4)
INSERT INTO column_data_test VALUES('AdventureWorks2017','Purchasing','Vendor','PreferredVendorStatus',0,0,0,0,0,21)
INSERT INTO column_data_test VALUES('AdventureWorks2017','Purchasing','Vendor','PurchasingWebServiceURL',0,0,0,0,0,23)
INSERT INTO column_data_test VALUES('AdventureWorks2017','Sales','CountryRegionCurrency','CountryRegionCode',0,0,0,0,0,17)
INSERT INTO column_data_test VALUES('AdventureWorks2017','Sales','CountryRegionCurrency','CurrencyCode',0,0,0,0,0,12)
INSERT INTO column_data_test VALUES('AdventureWorks2017','Sales','CountryRegionCurrency','ModifiedDate',0,0,0,0,0,12)
INSERT INTO column_data_test VALUES('AdventureWorks2017','Sales','CreditCard','CardNumber',0,0,1,0,0,10)
INSERT INTO column_data_test VALUES('AdventureWorks2017','Sales','CreditCard','CardType',0,0,0,0,0,8)
INSERT INTO column_data_test VALUES('AdventureWorks2017','Sales','CreditCard','CreditCardID',1,0,0,0,0,12)
INSERT INTO column_data_test VALUES('AdventureWorks2017','Sales','CreditCard','ExpMonth',0,0,0,0,0,8)
INSERT INTO column_data_test VALUES('AdventureWorks2017','Sales','CreditCard','ExpYear',0,0,0,0,0,7)
INSERT INTO column_data_test VALUES('AdventureWorks2017','Sales','CreditCard','ModifiedDate',0,0,0,0,0,12)
INSERT INTO column_data_test VALUES('AdventureWorks2017','Sales','Currency','CurrencyCode',0,0,0,0,0,12)
INSERT INTO column_data_test VALUES('AdventureWorks2017','Sales','Currency','ModifiedDate',0,0,0,0,0,12)
INSERT INTO column_data_test VALUES('AdventureWorks2017','Sales','Currency','Name',0,1,0,0,0,4)
INSERT INTO column_data_test VALUES('AdventureWorks2017','Sales','CurrencyRate','AverageRate',0,0,0,0,0,11)
INSERT INTO column_data_test VALUES('AdventureWorks2017','Sales','CurrencyRate','CurrencyRateDate',0,0,0,0,0,16)
INSERT INTO column_data_test VALUES('AdventureWorks2017','Sales','CurrencyRate','CurrencyRateID',1,0,0,0,0,14)
INSERT INTO column_data_test VALUES('AdventureWorks2017','Sales','CurrencyRate','EndOfDayRate',0,0,0,0,0,12)
INSERT INTO column_data_test VALUES('AdventureWorks2017','Sales','CurrencyRate','FromCurrencyCode',0,0,0,0,0,16)
INSERT INTO column_data_test VALUES('AdventureWorks2017','Sales','CurrencyRate','ModifiedDate',0,0,0,0,0,12)
INSERT INTO column_data_test VALUES('AdventureWorks2017','Sales','CurrencyRate','ToCurrencyCode',0,0,0,0,0,14)
INSERT INTO column_data_test VALUES('AdventureWorks2017','Sales','Customer','AccountNumber',0,0,1,0,0,13)
INSERT INTO column_data_test VALUES('AdventureWorks2017','Sales','Customer','CustomerID',1,0,0,0,0,10)
INSERT INTO column_data_test VALUES('AdventureWorks2017','Sales','Customer','ModifiedDate',0,0,0,0,0,12)
INSERT INTO column_data_test VALUES('AdventureWorks2017','Sales','Customer','PersonID',1,0,0,0,0,8)
INSERT INTO column_data_test VALUES('AdventureWorks2017','Sales','Customer','rowguid',1,0,0,0,0,7)
INSERT INTO column_data_test VALUES('AdventureWorks2017','Sales','Customer','StoreID',1,0,0,0,0,7)
INSERT INTO column_data_test VALUES('AdventureWorks2017','Sales','Customer','TerritoryID',1,0,0,0,0,11)
INSERT INTO column_data_test VALUES('AdventureWorks2017','Sales','PersonCreditCard','BusinessEntityID',1,0,0,0,0,16)
INSERT INTO column_data_test VALUES('AdventureWorks2017','Sales','PersonCreditCard','CreditCardID',1,0,0,0,0,12)
INSERT INTO column_data_test VALUES('AdventureWorks2017','Sales','PersonCreditCard','ModifiedDate',0,0,0,0,0,12)
INSERT INTO column_data_test VALUES('AdventureWorks2017','Sales','SalesOrderDetail','CarrierTrackingNumber',0,0,1,0,0,21)
INSERT INTO column_data_test VALUES('AdventureWorks2017','Sales','SalesOrderDetail','LineTotal',0,0,0,0,0,9)
INSERT INTO column_data_test VALUES('AdventureWorks2017','Sales','SalesOrderDetail','ModifiedDate',0,0,0,0,0,12)
INSERT INTO column_data_test VALUES('AdventureWorks2017','Sales','SalesOrderDetail','OrderQty',0,0,0,0,0,8)
INSERT INTO column_data_test VALUES('AdventureWorks2017','Sales','SalesOrderDetail','ProductID',1,0,0,0,0,9)
INSERT INTO column_data_test VALUES('AdventureWorks2017','Sales','SalesOrderDetail','rowguid',1,0,0,0,0,7)
INSERT INTO column_data_test VALUES('AdventureWorks2017','Sales','SalesOrderDetail','SalesOrderDetailID',1,0,0,0,0,18)
INSERT INTO column_data_test VALUES('AdventureWorks2017','Sales','SalesOrderDetail','SalesOrderID',1,0,0,0,0,12)
INSERT INTO column_data_test VALUES('AdventureWorks2017','Sales','SalesOrderDetail','SpecialOfferID',1,0,0,0,0,14)
INSERT INTO column_data_test VALUES('AdventureWorks2017','Sales','SalesOrderDetail','UnitPrice',0,0,0,0,0,9)
INSERT INTO column_data_test VALUES('AdventureWorks2017','Sales','SalesOrderDetail','UnitPriceDiscount',0,0,0,0,0,17)
INSERT INTO column_data_test VALUES('AdventureWorks2017','Sales','SalesOrderHeader','AccountNumber',0,0,1,0,0,13)
INSERT INTO column_data_test VALUES('AdventureWorks2017','Sales','SalesOrderHeader','BillToAddressID',1,0,0,0,0,15)
INSERT INTO column_data_test VALUES('AdventureWorks2017','Sales','SalesOrderHeader','Comment',0,0,0,0,0,7)
INSERT INTO column_data_test VALUES('AdventureWorks2017','Sales','SalesOrderHeader','CreditCardApprovalCode',0,0,0,0,0,22)
INSERT INTO column_data_test VALUES('AdventureWorks2017','Sales','SalesOrderHeader','CreditCardID',1,0,0,0,0,12)
INSERT INTO column_data_test VALUES('AdventureWorks2017','Sales','SalesOrderHeader','CurrencyRateID',1,0,0,0,0,14)
INSERT INTO column_data_test VALUES('AdventureWorks2017','Sales','SalesOrderHeader','CustomerID',1,0,0,0,0,10)
INSERT INTO column_data_test VALUES('AdventureWorks2017','Sales','SalesOrderHeader','DueDate',0,0,0,0,0,7)
INSERT INTO column_data_test VALUES('AdventureWorks2017','Sales','SalesOrderHeader','Freight',0,0,0,0,0,7)
INSERT INTO column_data_test VALUES('AdventureWorks2017','Sales','SalesOrderHeader','ModifiedDate',0,0,0,0,0,12)
INSERT INTO column_data_test VALUES('AdventureWorks2017','Sales','SalesOrderHeader','OnlineOrderFlag',0,0,0,0,0,15)
INSERT INTO column_data_test VALUES('AdventureWorks2017','Sales','SalesOrderHeader','OrderDate',0,0,0,0,0,9)
INSERT INTO column_data_test VALUES('AdventureWorks2017','Sales','SalesOrderHeader','PurchaseOrderNumber',0,0,1,0,0,19)
INSERT INTO column_data_test VALUES('AdventureWorks2017','Sales','SalesOrderHeader','RevisionNumber',0,0,1,0,0,14)
INSERT INTO column_data_test VALUES('AdventureWorks2017','Sales','SalesOrderHeader','rowguid',1,0,0,0,0,7)
INSERT INTO column_data_test VALUES('AdventureWorks2017','Sales','SalesOrderHeader','SalesOrderID',1,0,0,0,0,12)
INSERT INTO column_data_test VALUES('AdventureWorks2017','Sales','SalesOrderHeader','SalesOrderNumber',0,0,1,0,0,16)
INSERT INTO column_data_test VALUES('AdventureWorks2017','Sales','SalesOrderHeader','SalesPersonID',1,0,0,0,0,13)
INSERT INTO column_data_test VALUES('AdventureWorks2017','Sales','SalesOrderHeader','ShipDate',0,0,0,0,0,8)
INSERT INTO column_data_test VALUES('AdventureWorks2017','Sales','SalesOrderHeader','ShipMethodID',1,0,0,0,0,12)
INSERT INTO column_data_test VALUES('AdventureWorks2017','Sales','SalesOrderHeader','ShipToAddressID',1,0,0,0,0,15)
INSERT INTO column_data_test VALUES('AdventureWorks2017','Sales','SalesOrderHeader','Status',0,0,0,0,0,6)
INSERT INTO column_data_test VALUES('AdventureWorks2017','Sales','SalesOrderHeader','SubTotal',0,0,0,0,0,8)
INSERT INTO column_data_test VALUES('AdventureWorks2017','Sales','SalesOrderHeader','TaxAmt',0,0,0,0,0,6)
INSERT INTO column_data_test VALUES('AdventureWorks2017','Sales','SalesOrderHeader','TerritoryID',1,0,0,0,0,11)
INSERT INTO column_data_test VALUES('AdventureWorks2017','Sales','SalesOrderHeader','TotalDue',0,0,0,0,0,8)
INSERT INTO column_data_test VALUES('AdventureWorks2017','Sales','SalesOrderHeaderSalesReason','ModifiedDate',0,0,0,0,0,12)
INSERT INTO column_data_test VALUES('AdventureWorks2017','Sales','SalesOrderHeaderSalesReason','SalesOrderID',1,0,0,0,0,12)
INSERT INTO column_data_test VALUES('AdventureWorks2017','Sales','SalesOrderHeaderSalesReason','SalesReasonID',1,0,0,0,0,13)
INSERT INTO column_data_test VALUES('AdventureWorks2017','Sales','SalesPerson','Bonus',0,0,0,0,0,5)
INSERT INTO column_data_test VALUES('AdventureWorks2017','Sales','SalesPerson','BusinessEntityID',1,0,0,0,0,16)
INSERT INTO column_data_test VALUES('AdventureWorks2017','Sales','SalesPerson','CommissionPct',0,0,0,0,0,13)
INSERT INTO column_data_test VALUES('AdventureWorks2017','Sales','SalesPerson','ModifiedDate',0,0,0,0,0,12)
INSERT INTO column_data_test VALUES('AdventureWorks2017','Sales','SalesPerson','rowguid',1,0,0,0,0,7)
INSERT INTO column_data_test VALUES('AdventureWorks2017','Sales','SalesPerson','SalesLastYear',0,0,0,0,0,13)
INSERT INTO column_data_test VALUES('AdventureWorks2017','Sales','SalesPerson','SalesQuota',0,0,0,0,0,10)
INSERT INTO column_data_test VALUES('AdventureWorks2017','Sales','SalesPerson','SalesYTD',0,0,0,0,0,8)
INSERT INTO column_data_test VALUES('AdventureWorks2017','Sales','SalesPerson','TerritoryID',1,0,0,0,0,11)
INSERT INTO column_data_test VALUES('AdventureWorks2017','Sales','SalesPersonQuotaHistory','BusinessEntityID',1,0,0,0,0,16)
INSERT INTO column_data_test VALUES('AdventureWorks2017','Sales','SalesPersonQuotaHistory','ModifiedDate',0,0,0,0,0,12)
INSERT INTO column_data_test VALUES('AdventureWorks2017','Sales','SalesPersonQuotaHistory','QuotaDate',0,0,0,0,0,9)
INSERT INTO column_data_test VALUES('AdventureWorks2017','Sales','SalesPersonQuotaHistory','rowguid',1,0,0,0,0,7)
INSERT INTO column_data_test VALUES('AdventureWorks2017','Sales','SalesPersonQuotaHistory','SalesQuota',0,0,0,0,0,10)
INSERT INTO column_data_test VALUES('AdventureWorks2017','Sales','SalesReason','ModifiedDate',0,0,0,0,0,12)
INSERT INTO column_data_test VALUES('AdventureWorks2017','Sales','SalesReason','Name',0,1,0,0,0,4)
INSERT INTO column_data_test VALUES('AdventureWorks2017','Sales','SalesReason','ReasonType',0,0,0,0,0,10)
INSERT INTO column_data_test VALUES('AdventureWorks2017','Sales','SalesReason','SalesReasonID',1,0,0,0,0,13)
INSERT INTO column_data_test VALUES('AdventureWorks2017','Sales','SalesTaxRate','ModifiedDate',0,0,0,0,0,12)
INSERT INTO column_data_test VALUES('AdventureWorks2017','Sales','SalesTaxRate','Name',0,1,0,0,0,4)
INSERT INTO column_data_test VALUES('AdventureWorks2017','Sales','SalesTaxRate','rowguid',1,0,0,0,0,7)
INSERT INTO column_data_test VALUES('AdventureWorks2017','Sales','SalesTaxRate','SalesTaxRateID',1,0,0,0,0,14)
INSERT INTO column_data_test VALUES('AdventureWorks2017','Sales','SalesTaxRate','StateProvinceID',1,0,0,0,0,15)
INSERT INTO column_data_test VALUES('AdventureWorks2017','Sales','SalesTaxRate','TaxRate',0,0,0,0,0,7)
INSERT INTO column_data_test VALUES('AdventureWorks2017','Sales','SalesTaxRate','TaxType',0,0,0,0,0,7)
INSERT INTO column_data_test VALUES('AdventureWorks2017','Sales','SalesTerritory','CostLastYear',0,0,0,0,0,12)
INSERT INTO column_data_test VALUES('AdventureWorks2017','Sales','SalesTerritory','CostYTD',0,0,0,0,0,7)
INSERT INTO column_data_test VALUES('AdventureWorks2017','Sales','SalesTerritory','CountryRegionCode',0,0,0,0,0,17)
INSERT INTO column_data_test VALUES('AdventureWorks2017','Sales','SalesTerritory','Group',0,0,0,0,0,5)
INSERT INTO column_data_test VALUES('AdventureWorks2017','Sales','SalesTerritory','ModifiedDate',0,0,0,0,0,12)
INSERT INTO column_data_test VALUES('AdventureWorks2017','Sales','SalesTerritory','Name',0,1,0,0,0,4)
INSERT INTO column_data_test VALUES('AdventureWorks2017','Sales','SalesTerritory','rowguid',1,0,0,0,0,7)
INSERT INTO column_data_test VALUES('AdventureWorks2017','Sales','SalesTerritory','SalesLastYear',0,0,0,0,0,13)
INSERT INTO column_data_test VALUES('AdventureWorks2017','Sales','SalesTerritory','SalesYTD',0,0,0,0,0,8)
INSERT INTO column_data_test VALUES('AdventureWorks2017','Sales','SalesTerritory','TerritoryID',1,0,0,0,0,11)
INSERT INTO column_data_test VALUES('AdventureWorks2017','Sales','SalesTerritoryHistory','BusinessEntityID',1,0,0,0,0,16)
INSERT INTO column_data_test VALUES('AdventureWorks2017','Sales','SalesTerritoryHistory','EndDate',0,0,0,0,0,7)
INSERT INTO column_data_test VALUES('AdventureWorks2017','Sales','SalesTerritoryHistory','ModifiedDate',0,0,0,0,0,12)
INSERT INTO column_data_test VALUES('AdventureWorks2017','Sales','SalesTerritoryHistory','rowguid',1,0,0,0,0,7)
INSERT INTO column_data_test VALUES('AdventureWorks2017','Sales','SalesTerritoryHistory','StartDate',0,0,0,0,0,9)
INSERT INTO column_data_test VALUES('AdventureWorks2017','Sales','SalesTerritoryHistory','TerritoryID',1,0,0,0,0,11)
INSERT INTO column_data_test VALUES('AdventureWorks2017','Sales','ShoppingCartItem','DateCreated',0,0,0,0,0,11)
INSERT INTO column_data_test VALUES('AdventureWorks2017','Sales','ShoppingCartItem','ModifiedDate',0,0,0,0,0,12)
INSERT INTO column_data_test VALUES('AdventureWorks2017','Sales','ShoppingCartItem','ProductID',1,0,0,0,0,9)
INSERT INTO column_data_test VALUES('AdventureWorks2017','Sales','ShoppingCartItem','Quantity',0,0,0,0,0,8)
INSERT INTO column_data_test VALUES('AdventureWorks2017','Sales','ShoppingCartItem','ShoppingCartID',1,0,0,0,0,14)
INSERT INTO column_data_test VALUES('AdventureWorks2017','Sales','ShoppingCartItem','ShoppingCartItemID',1,0,0,0,0,18)
INSERT INTO column_data_test VALUES('AdventureWorks2017','Sales','SpecialOffer','Category',0,0,0,0,0,8)
INSERT INTO column_data_test VALUES('AdventureWorks2017','Sales','SpecialOffer','Description',0,0,0,0,0,11)
INSERT INTO column_data_test VALUES('AdventureWorks2017','Sales','SpecialOffer','DiscountPct',0,0,0,0,0,11)
INSERT INTO column_data_test VALUES('AdventureWorks2017','Sales','SpecialOffer','EndDate',0,0,0,0,0,7)
INSERT INTO column_data_test VALUES('AdventureWorks2017','Sales','SpecialOffer','MaxQty',0,0,0,0,0,6)
INSERT INTO column_data_test VALUES('AdventureWorks2017','Sales','SpecialOffer','MinQty',0,0,0,0,0,6)
INSERT INTO column_data_test VALUES('AdventureWorks2017','Sales','SpecialOffer','ModifiedDate',0,0,0,0,0,12)
INSERT INTO column_data_test VALUES('AdventureWorks2017','Sales','SpecialOffer','rowguid',1,0,0,0,0,7)
INSERT INTO column_data_test VALUES('AdventureWorks2017','Sales','SpecialOffer','SpecialOfferID',1,0,0,0,0,14)
INSERT INTO column_data_test VALUES('AdventureWorks2017','Sales','SpecialOffer','StartDate',0,0,0,0,0,9)
INSERT INTO column_data_test VALUES('AdventureWorks2017','Sales','SpecialOffer','Type',0,0,0,0,0,4)
INSERT INTO column_data_test VALUES('AdventureWorks2017','Sales','SpecialOfferProduct','ModifiedDate',0,0,0,0,0,12)
INSERT INTO column_data_test VALUES('AdventureWorks2017','Sales','SpecialOfferProduct','ProductID',1,0,0,0,0,9)
INSERT INTO column_data_test VALUES('AdventureWorks2017','Sales','SpecialOfferProduct','rowguid',1,0,0,0,0,7)
INSERT INTO column_data_test VALUES('AdventureWorks2017','Sales','SpecialOfferProduct','SpecialOfferID',1,0,0,0,0,14)
INSERT INTO column_data_test VALUES('AdventureWorks2017','Sales','Store','BusinessEntityID',1,0,0,0,0,16)
INSERT INTO column_data_test VALUES('AdventureWorks2017','Sales','Store','Demographics',0,0,0,0,0,12)
INSERT INTO column_data_test VALUES('AdventureWorks2017','Sales','Store','ModifiedDate',0,0,0,0,0,12)
INSERT INTO column_data_test VALUES('AdventureWorks2017','Sales','Store','Name',0,1,0,0,0,4)
INSERT INTO column_data_test VALUES('AdventureWorks2017','Sales','Store','rowguid',1,0,0,0,0,7)
INSERT INTO column_data_test VALUES('AdventureWorks2017','Sales','Store','SalesPersonID',1,0,0,0,0,13)


-- Setting up categorical metadata for testing

IF OBJECT_ID('metadatatest', 'u') IS NOT NULL 
  DROP TABLE metadatatest;

  CREATE TABLE metadatatest (
	   [META_ID] int IDENTITY(1,1) PRIMARY KEY
      ,[TABLE_CATALOG] nvarchar(128)
      ,[TABLE_SCHEMA] nvarchar(128)
      ,[TABLE_NAME] nvarchar(128)
      ,[COLUMN_NAME] nvarchar(128)
      ,[ORDINAL_POSITION] int
      ,[IS_NULLABLE] varchar(3)
      ,[DATA_TYPE] nvarchar(128)
      ,[CHARACTER_MAXIMUM_LENGTH] int
      ,[CHARACTER_OCTET_LENGTH] int
      ,[NUMERIC_PRECISION] 	tinyint
      ,[NUMERIC_PRECISION_RADIX] smallint
      ,[NUMERIC_SCALE] int
      ,[DATETIME_PRECISION] smallint
      ,[CHARACTER_SET_NAME] nvarchar(128)
	  ,[CONSTRAINT_TYPE] varchar(11)
	  ,[BUSINESS_KEY] int
	  ,[FOREIGN_KEY] int
	  ,[PRIMARY KEY] int
	  ,[CONTAINS_ID] int
	  ,[CONTAINS_NAME] int
	  ,[CONTAINS_NUMBER] int
	  ,[CONTAINS_NODE] int
	  ,[CONTAINS_KEY] int
	  ,[COLUMN_NAME_LENGTH] int
); 

DECLARE @Countertest INT 
DECLARE @Databasetest sysname
SET @Countertest=1
WHILE ( @Countertest <= (select count(name) from sys.databases Where name IN ('AdventureWorks2017')))
BEGIN
	SET @Databasetest = (Select name
			From 
			(
				Select 
				  Row_Number() Over (Order By name) As RowNum
				, name
				From sys.databases
				Where name IN ('AdventureWorks2017')
			) sys2
			Where RowNum = @Countertest)


	declare @sqltest nvarchar(MAX)
	select @sqltest = 
	'INSERT INTO 
    metadatatest([TABLE_CATALOG],[TABLE_SCHEMA],[TABLE_NAME],[COLUMN_NAME],[ORDINAL_POSITION],[IS_NULLABLE],[DATA_TYPE],[CHARACTER_MAXIMUM_LENGTH],[CHARACTER_OCTET_LENGTH]
      ,[NUMERIC_PRECISION],[NUMERIC_PRECISION_RADIX],[NUMERIC_SCALE],[DATETIME_PRECISION],[CHARACTER_SET_NAME],[CONSTRAINT_TYPE]
	  ,[BUSINESS_KEY], [FOREIGN_KEY], [PRIMARY KEY],[CONTAINS_ID],[CONTAINS_NAME],[CONTAINS_NUMBER],[CONTAINS_NODE],[CONTAINS_KEY],[COLUMN_NAME_LENGTH]) 
	SELECT
		COL.[TABLE_CATALOG],COL.[TABLE_SCHEMA],COL.[TABLE_NAME],COL.[COLUMN_NAME],[ORDINAL_POSITION],[IS_NULLABLE],[DATA_TYPE],[CHARACTER_MAXIMUM_LENGTH],[CHARACTER_OCTET_LENGTH]
		  ,[NUMERIC_PRECISION],[NUMERIC_PRECISION_RADIX],[NUMERIC_SCALE],[DATETIME_PRECISION],[CHARACTER_SET_NAME],[CONSTRAINT_TYPE]
		  ,ISNULL([BUSINESS_KEY],0), ISNULL([FOREIGN_KEY],0), ISNULL([PRIMARY KEY],0),[CONTAINS_ID],[CONTAINS_NAME],[CONTAINS_NUMBER],[CONTAINS_NODE],[CONTAINS_KEY],[COLUMN_NAME_LENGTH]
	FROM
		'+@Databasetest+'.INFORMATION_SCHEMA.COLUMNS COL
	LEFT JOIN '+@Databasetest+'.INFORMATION_SCHEMA.CONSTRAINT_COLUMN_USAGE CONSCOLU ON COL.TABLE_CATALOG=CONSCOLU.TABLE_CATALOG AND COL.TABLE_SCHEMA=CONSCOLU.TABLE_SCHEMA AND COL.TABLE_NAME=CONSCOLU.TABLE_NAME AND
		COL.COLUMN_NAME=CONSCOLU.COLUMN_NAME
	LEFT JOIN '+@Databasetest+'.INFORMATION_SCHEMA.TABLE_CONSTRAINTS TBLCON ON TBLCON.CONSTRAINT_NAME=CONSCOLU.CONSTRAINT_NAME
	LEFT JOIN '+@Databasetest+'.INFORMATION_SCHEMA.TABLES TBL ON TBL.TABLE_NAME=COL.TABLE_NAME
	LEFT JOIN AdventureWorks2017.dbo.keys_test keys ON keys.[TABLE_CATALOG] collate SQL_Latin1_General_CP1_CI_AS = COL.[TABLE_CATALOG] collate SQL_Latin1_General_CP1_CI_AS 
	AND keys.[TABLE_SCHEMA] collate SQL_Latin1_General_CP1_CI_AS = COL.[TABLE_SCHEMA] collate SQL_Latin1_General_CP1_CI_AS 
	AND keys.[TABLE_NAME] collate SQL_Latin1_General_CP1_CI_AS = COL.[TABLE_NAME] collate SQL_Latin1_General_CP1_CI_AS 
	AND keys.[COLUMN_NAME] collate SQL_Latin1_General_CP1_CI_AS = COL.[COLUMN_NAME] collate SQL_Latin1_General_CP1_CI_AS
	LEFT JOIN AdventureWorks2017.dbo.column_data_test coldata ON coldata.[TABLE_CATALOG] collate SQL_Latin1_General_CP1_CI_AS = COL.[TABLE_CATALOG] collate SQL_Latin1_General_CP1_CI_AS
    AND coldata.[TABLE_SCHEMA] collate SQL_Latin1_General_CP1_CI_AS= COL.[TABLE_SCHEMA] collate SQL_Latin1_General_CP1_CI_AS
	AND coldata.[TABLE_NAME]  collate SQL_Latin1_General_CP1_CI_AS= COL.[TABLE_NAME] collate SQL_Latin1_General_CP1_CI_AS
	AND coldata.[COLUMN_NAME] collate SQL_Latin1_General_CP1_CI_AS= COL.[COLUMN_NAME] collate SQL_Latin1_General_CP1_CI_AS
	WHERE TBL.TABLE_TYPE=''BASE TABLE'' AND COL.TABLE_NAME NOT IN (''column_data_test'', ''column_data_train'', ''keys_train'', ''keys_test'', ''metadatatest'', ''metadatatrain'', ''metadatatrain_numeric'', ''metadatatest_numeric'')' 


	execute(@sqltest)

	PRINT @Databasetest
    SET @Countertest  = @Countertest  + 1
END



-- Setting up numeric metadata for testing based on the categorical metadata and feature selection

IF OBJECT_ID('metadatatest_numeric', 'u') IS NOT NULL 
  DROP TABLE metadatatest_numeric;

  CREATE TABLE metadatatest_numeric (	
	 [META_ID] int IDENTITY(1,1) PRIMARY KEY
	,[ORDINAL_POSITION] int
	,[IS_NULLABLE] int
    ,[DATA_TYPE_bigint] int	
	,[DATA_TYPE_bit] int
	,[DATA_TYPE_char] int
	,[DATA_TYPE_date] int
	,[DATA_TYPE_datetime] int
	,[DATA_TYPE_datetime2] int
	,[DATA_TYPE_decimal] int
	,[DATA_TYPE_float] int
	,[DATA_TYPE_geography] int
	,[DATA_TYPE_geometry] int
	,[DATA_TYPE_image] int
	,[DATA_TYPE_int] int
	,[DATA_TYPE_nchar] int
	,[DATA_TYPE_ntext] int
	,[DATA_TYPE_nvarchar] int
	,[DATA_TYPE_real] int
	,[DATA_TYPE_smalldatetime] int
	,[DATA_TYPE_smallint] int
	,[DATA_TYPE_text] int
	,[DATA_TYPE_timestamp] int
	,[DATA_TYPE_tinyint] int
	,[DATA_TYPE_varbinary] int
	,[DATA_TYPE_varchar] int
    ,[CHARACTER_MAXIMUM_LENGTH] int	
    ,[NUMERIC_PRECISION_RADIX] smallint	
    ,[NUMERIC_SCALE] int	
	,[CONSTRAINT_TYPE_CHECK] int
	,[CONSTRAINT_TYPE_FOREIGN KEY] int
	,[CONSTRAINT_TYPE_PRIMARY KEY] int
	,[CONSTRAINT_TYPE_UNIQUE] int
	,[BUSINESS_KEY] int
	,[CONTAINS_ID] int
	,[CONTAINS_NAME] int
	,[CONTAINS_NUMBER] int
	,[CONTAINS_KEY] int
	,[COLUMN_NAME_LENGTH] int
); 	


INSERT INTO 
    metadatatest_numeric([ORDINAL_POSITION]
						,[IS_NULLABLE]
						,[DATA_TYPE_bigint] 	
						,[DATA_TYPE_bit] 
						,[DATA_TYPE_char] 
						,[DATA_TYPE_date] 
						,[DATA_TYPE_datetime] 
						,[DATA_TYPE_datetime2] 
						,[DATA_TYPE_decimal] 
						,[DATA_TYPE_float] 
						,[DATA_TYPE_geography] 
						,[DATA_TYPE_geometry] 
						,[DATA_TYPE_image] 
						,[DATA_TYPE_int] 
						,[DATA_TYPE_nchar] 
						,[DATA_TYPE_ntext] 
						,[DATA_TYPE_nvarchar] 
						,[DATA_TYPE_real] 
						,[DATA_TYPE_smalldatetime] 
						,[DATA_TYPE_smallint] 
						,[DATA_TYPE_text] 
						,[DATA_TYPE_timestamp] 
						,[DATA_TYPE_tinyint] 
						,[DATA_TYPE_varbinary] 
						,[DATA_TYPE_varchar] 
						,[CHARACTER_MAXIMUM_LENGTH] 
						,[NUMERIC_PRECISION_RADIX]	
						,[NUMERIC_SCALE] 	
						,[CONSTRAINT_TYPE_CHECK] 
						,[CONSTRAINT_TYPE_FOREIGN KEY] 
						,[CONSTRAINT_TYPE_PRIMARY KEY] 
						,[CONSTRAINT_TYPE_UNIQUE] 
						,[BUSINESS_KEY] 
						,[CONTAINS_ID] 
						,[CONTAINS_NAME] 
						,[CONTAINS_NUMBER]
						,[CONTAINS_KEY]
						,[COLUMN_NAME_LENGTH]) 
	SELECT
		ISNULL([ORDINAL_POSITION], 0) AS '[ORDINAL_POSITION]'
		,CASE WHEN [IS_NULLABLE]='YES' THEN 1 ELSE 0 END AS '[IS_NULLABLE]'
		,CASE WHEN [DATA_TYPE]='bigint' THEN 1 ELSE 0 END AS '[DATA_TYPE_bigint]'
		,CASE WHEN [DATA_TYPE]='bit' THEN 1 ELSE 0 END AS '[DATA_TYPE_bit]'
		,CASE WHEN [DATA_TYPE]='char' THEN 1 ELSE 0 END AS '[DATA_TYPE_char]'
		,CASE WHEN [DATA_TYPE]='date' THEN 1 ELSE 0 END AS '[DATA_TYPE_date]'
		,CASE WHEN [DATA_TYPE]='datetime' THEN 1 ELSE 0 END AS '[DATA_TYPE_datetime]'
		,CASE WHEN [DATA_TYPE]='datetime2' THEN 1 ELSE 0 END AS '[DATA_TYPE_datetime2]'
		,CASE WHEN [DATA_TYPE]='decimal' THEN 1 ELSE 0 END AS '[DATA_TYPE_decimal]'
		,CASE WHEN [DATA_TYPE]='float' THEN 1 ELSE 0 END AS '[DATA_TYPE_float]'
		,CASE WHEN [DATA_TYPE]='geography' THEN 1 ELSE 0 END AS '[DATA_TYPE_geography]'
		,CASE WHEN [DATA_TYPE]='geometry' THEN 1 ELSE 0 END AS '[DATA_TYPE_geometry]'
		,CASE WHEN [DATA_TYPE]='image' THEN 1 ELSE 0 END AS '[DATA_TYPE_image]'
		,CASE WHEN [DATA_TYPE]='int' THEN 1 ELSE 0 END AS '[DATA_TYPE_int]'
		,CASE WHEN [DATA_TYPE]='nchar' THEN 1 ELSE 0 END AS '[DATA_TYPE_nchar]'
		,CASE WHEN [DATA_TYPE]='ntext' THEN 1 ELSE 0 END AS '[DATA_TYPE_ntext]'
		,CASE WHEN [DATA_TYPE]='nvarchar' THEN 1 ELSE 0 END AS '[DATA_TYPE_nvarchar]'
		,CASE WHEN [DATA_TYPE]='real' THEN 1 ELSE 0 END AS '[DATA_TYPE_real]'
		,CASE WHEN [DATA_TYPE]='smalldatetime' THEN 1 ELSE 0 END AS '[DATA_TYPE_smalldatetime]'
		,CASE WHEN [DATA_TYPE]='smallint' THEN 1 ELSE 0 END AS '[DATA_TYPE_smallint]'
		,CASE WHEN [DATA_TYPE]='text' THEN 1 ELSE 0 END AS '[DATA_TYPE_text]'
		,CASE WHEN [DATA_TYPE]='timestamp' THEN 1 ELSE 0 END AS '[DATA_TYPE_timestamp]'
		,CASE WHEN [DATA_TYPE]='tinyint' THEN 1 ELSE 0 END AS '[DATA_TYPE_tinyint]'
		,CASE WHEN [DATA_TYPE]='varbinary' THEN 1 ELSE 0 END AS '[DATA_TYPE_varbinary]'
		,CASE WHEN [DATA_TYPE]='varchar' THEN 1 ELSE 0 END AS '[DATA_TYPE_varchar]'
		,ISNULL([CHARACTER_MAXIMUM_LENGTH], 0) AS '[CHARACTER_MAXIMUM_LENGTH]'
		,ISNULL([NUMERIC_PRECISION_RADIX], 0) AS '[NUMERIC_PRECISION_RADIX]'
		,ISNULL([NUMERIC_SCALE], 0) AS '[NUMERIC_SCALE]'
		,CASE WHEN [CONSTRAINT_TYPE]='CHECK' THEN 1 ELSE 0 END AS '[CONSTRAINT_TYPE_CHECK]'
		,CASE WHEN [CONSTRAINT_TYPE]='FOREIGN KEY' THEN 1 ELSE 0 END AS '[CONSTRAINT_TYPE_FOREIGN KEY]'
		,CASE WHEN [CONSTRAINT_TYPE]='PRIMARY KEY' THEN 1 ELSE 0 END AS '[CONSTRAINT_TYPE_PRIMARY KEY]'
		,CASE WHEN [CONSTRAINT_TYPE]='UNIQUE' THEN 1 ELSE 0 END AS '[CONSTRAINT_TYPE_UNIQUE]'
		,ISNULL([BUSINESS_KEY], 0) AS '[BUSINESS_KEY]'
		,ISNULL([CONTAINS_ID], 0) AS '[CONTAINS_ID]'
		,ISNULL([CONTAINS_NAME], 0) AS '[CONTAINS_NAME]'
		,ISNULL([CONTAINS_NUMBER], 0) AS '[CONTAINS_NUMBER]'
		,ISNULL([CONTAINS_KEY], 0) AS '[CONTAINS_KEY]'
		,ISNULL([COLUMN_NAME_LENGTH], 0) AS '[COLUMN_NAME_LENGTH]'
	FROM AdventureWorks2017.dbo.metadatatest


-- Luokittelu-osio
	
-- Mallin luomisen proseduuri

USE AdventureWorks2017
GO

CREATE PROCEDURE generate_DVAutomation_model_decisiontree (@trained_model VARBINARY(max) OUTPUT)
AS
BEGIN
    EXECUTE sp_execute_external_script @language = N'Python'
        , @script = N'
import pickle
from sklearn.tree import DecisionTreeClassifier
classifier = DecisionTreeClassifier()
trained_model = pickle.dumps(classifier.fit(metadatatrain_numeric[["ORDINAL_POSITION","IS_NULLABLE","DATA_TYPE_bigint","DATA_TYPE_bit","DATA_TYPE_char","DATA_TYPE_date",
							"DATA_TYPE_datetime","DATA_TYPE_datetime2","DATA_TYPE_decimal","DATA_TYPE_float","DATA_TYPE_geography","DATA_TYPE_geometry","DATA_TYPE_image",
							"DATA_TYPE_int","DATA_TYPE_nchar","DATA_TYPE_ntext","DATA_TYPE_nvarchar","DATA_TYPE_real","DATA_TYPE_smalldatetime","DATA_TYPE_smallint","DATA_TYPE_text",
							"DATA_TYPE_timestamp","DATA_TYPE_tinyint","DATA_TYPE_varbinary","DATA_TYPE_varchar","CHARACTER_MAXIMUM_LENGTH","NUMERIC_PRECISION_RADIX",
							"NUMERIC_SCALE","CONSTRAINT_TYPE_CHECK","CONSTRAINT_TYPE_FOREIGN KEY","CONSTRAINT_TYPE_PRIMARY KEY","CONSTRAINT_TYPE_UNIQUE","CONTAINS_ID",
							"CONTAINS_NAME","CONTAINS_NUMBER","CONTAINS_KEY","COLUMN_NAME_LENGTH"]], 
							metadatatrain_numeric[["BUSINESS_KEY"]].values.ravel()))'


        , @input_data_1 = N'SELECT  [ORDINAL_POSITION]
									,[IS_NULLABLE]
									,[DATA_TYPE_bigint] 	
									,[DATA_TYPE_bit] 
									,[DATA_TYPE_char] 
									,[DATA_TYPE_date] 
									,[DATA_TYPE_datetime] 
									,[DATA_TYPE_datetime2] 
									,[DATA_TYPE_decimal] 
									,[DATA_TYPE_float] 
									,[DATA_TYPE_geography] 
									,[DATA_TYPE_geometry] 
									,[DATA_TYPE_image] 
									,[DATA_TYPE_int] 
									,[DATA_TYPE_nchar] 
									,[DATA_TYPE_ntext] 
									,[DATA_TYPE_nvarchar] 
									,[DATA_TYPE_real] 
									,[DATA_TYPE_smalldatetime] 
									,[DATA_TYPE_smallint] 
									,[DATA_TYPE_text] 
									,[DATA_TYPE_timestamp] 
									,[DATA_TYPE_tinyint] 
									,[DATA_TYPE_varbinary] 
									,[DATA_TYPE_varchar] 
									,[CHARACTER_MAXIMUM_LENGTH] 
									,[NUMERIC_PRECISION_RADIX]	
									,[NUMERIC_SCALE] 	
									,[CONSTRAINT_TYPE_CHECK] 
									,[CONSTRAINT_TYPE_FOREIGN KEY] 
									,[CONSTRAINT_TYPE_PRIMARY KEY] 
									,[CONSTRAINT_TYPE_UNIQUE] 
									,[BUSINESS_KEY] 
									,[CONTAINS_ID] 
									,[CONTAINS_NAME] 
									,[CONTAINS_NUMBER]
									,[CONTAINS_KEY]
									,[COLUMN_NAME_LENGTH]
						FROM [AdventureWorks2017].[dbo].[metadatatrain_numeric]'
        , @input_data_1_name = N'metadatatrain_numeric'
        , @params = N'@trained_model varbinary(max) OUTPUT'
        , @trained_model = @trained_model OUTPUT;
END;
GO


-- Luokittelumallin taulun luonti ja luokittemallin luonnin käynnistys

USE AdventureWorks2017
GO

DROP TABLE IF EXISTS DVAutomation_models;
GO

CREATE TABLE DVAutomation_models (
  model_name VARCHAR(50) NOT NULL DEFAULT('default model') PRIMARY KEY,
  model VARBINARY(MAX) NOT NULL
);
GO


DECLARE @model varbinary(max);
DECLARE @new_model_name varchar(50)
SET @new_model_name = 'Decision Tree'
EXECUTE generate_DVAutomation_model_decisiontree @model OUTPUT;
DELETE DVAutomation_models WHERE model_name = @new_model_name;
INSERT INTO DVAutomation_models (model_name, model) values(@new_model_name, @model);
GO


-- Luokittelun toteutus

CREATE PROCEDURE predict_businesskeys_decisiontree (@model VARCHAR(100))
AS
BEGIN
    DECLARE @nb_model VARBINARY(max) = (
            SELECT model
            FROM DVAutomation_models
            WHERE model_name = @model
            );

    EXECUTE sp_execute_external_script @language = N'Python'
        , @script = N'
import pickle


businesskeymodel = pickle.loads(nb_model)

businesskeys_pred = businesskeymodel.predict(metadatatest_numeric[["ORDINAL_POSITION","IS_NULLABLE","DATA_TYPE_bigint","DATA_TYPE_bit","DATA_TYPE_char","DATA_TYPE_date",
							"DATA_TYPE_datetime","DATA_TYPE_datetime2","DATA_TYPE_decimal","DATA_TYPE_float","DATA_TYPE_geography","DATA_TYPE_geometry","DATA_TYPE_image",
							"DATA_TYPE_int","DATA_TYPE_nchar","DATA_TYPE_ntext","DATA_TYPE_nvarchar","DATA_TYPE_real","DATA_TYPE_smalldatetime","DATA_TYPE_smallint","DATA_TYPE_text",
							"DATA_TYPE_timestamp","DATA_TYPE_tinyint","DATA_TYPE_varbinary","DATA_TYPE_varchar","CHARACTER_MAXIMUM_LENGTH","NUMERIC_PRECISION_RADIX",
							"NUMERIC_SCALE","CONSTRAINT_TYPE_CHECK","CONSTRAINT_TYPE_FOREIGN KEY","CONSTRAINT_TYPE_PRIMARY KEY","CONSTRAINT_TYPE_UNIQUE","CONTAINS_ID",
							"CONTAINS_NAME","CONTAINS_NUMBER","CONTAINS_KEY","COLUMN_NAME_LENGTH"]])

metadatatest_numeric["PredictedBusinesskeys"] = businesskeys_pred

OutputDataSet = metadatatest_numeric[["META_ID", "ORDINAL_POSITION","IS_NULLABLE","DATA_TYPE_bigint","DATA_TYPE_bit","DATA_TYPE_char","DATA_TYPE_date",
							"DATA_TYPE_datetime","DATA_TYPE_datetime2","DATA_TYPE_decimal","DATA_TYPE_float","DATA_TYPE_geography","DATA_TYPE_geometry","DATA_TYPE_image",
							"DATA_TYPE_int","DATA_TYPE_nchar","DATA_TYPE_ntext","DATA_TYPE_nvarchar","DATA_TYPE_real","DATA_TYPE_smalldatetime","DATA_TYPE_smallint","DATA_TYPE_text",
							"DATA_TYPE_timestamp","DATA_TYPE_tinyint","DATA_TYPE_varbinary","DATA_TYPE_varchar","CHARACTER_MAXIMUM_LENGTH","NUMERIC_PRECISION_RADIX",
							"NUMERIC_SCALE","CONSTRAINT_TYPE_CHECK","CONSTRAINT_TYPE_FOREIGN KEY","CONSTRAINT_TYPE_PRIMARY KEY","CONSTRAINT_TYPE_UNIQUE","CONTAINS_ID",
							"CONTAINS_NAME","CONTAINS_NUMBER","CONTAINS_KEY","COLUMN_NAME_LENGTH", "BUSINESS_KEY", "PredictedBusinesskeys"]]
print(OutputDataSet)
'
        , @input_data_1 = N'SELECT  [META_ID] 
								    ,[ORDINAL_POSITION]
									,[IS_NULLABLE]
									,[DATA_TYPE_bigint] 	
									,[DATA_TYPE_bit] 
									,[DATA_TYPE_char] 
									,[DATA_TYPE_date] 
									,[DATA_TYPE_datetime] 
									,[DATA_TYPE_datetime2] 
									,[DATA_TYPE_decimal] 
									,[DATA_TYPE_float] 
									,[DATA_TYPE_geography] 
									,[DATA_TYPE_geometry] 
									,[DATA_TYPE_image] 
									,[DATA_TYPE_int] 
									,[DATA_TYPE_nchar] 
									,[DATA_TYPE_ntext] 
									,[DATA_TYPE_nvarchar] 
									,[DATA_TYPE_real] 
									,[DATA_TYPE_smalldatetime] 
									,[DATA_TYPE_smallint] 
									,[DATA_TYPE_text] 
									,[DATA_TYPE_timestamp] 
									,[DATA_TYPE_tinyint] 
									,[DATA_TYPE_varbinary] 
									,[DATA_TYPE_varchar] 
									,[CHARACTER_MAXIMUM_LENGTH] 
									,[NUMERIC_PRECISION_RADIX]	
									,[NUMERIC_SCALE] 	
									,[CONSTRAINT_TYPE_CHECK] 
									,[CONSTRAINT_TYPE_FOREIGN KEY] 
									,[CONSTRAINT_TYPE_PRIMARY KEY] 
									,[CONSTRAINT_TYPE_UNIQUE] 
									,[BUSINESS_KEY] 
									,[CONTAINS_ID] 
									,[CONTAINS_NAME] 
									,[CONTAINS_NUMBER]
									,[CONTAINS_KEY]
									,[COLUMN_NAME_LENGTH]
						FROM [AdventureWorks2017].[dbo].[metadatatest_numeric]'
        , @input_data_1_name = N'metadatatest_numeric'
        , @params = N'@nb_model varbinary(max)'
        , @nb_model = @nb_model
    WITH RESULT SETS((
                "META_ID" INT
				,"ORDINAL_POSITION" INT
				,"IS_NULLABLE" INT
				,"DATA_TYPE_bigint" INT 	
				,"DATA_TYPE_bit" INT
				,"DATA_TYPE_char" INT
				,"DATA_TYPE_date" INT
				,"DATA_TYPE_datetime" INT 
				,"DATA_TYPE_datetime2" INT
				,"DATA_TYPE_decimal" INT
				,"DATA_TYPE_float" INT
				,"DATA_TYPE_geography" INT 
				,"DATA_TYPE_geometry" INT
				,"DATA_TYPE_image" INT
				,"DATA_TYPE_int" INT
				,"DATA_TYPE_nchar" INT
				,"DATA_TYPE_ntext" INT
				,"DATA_TYPE_nvarchar" INT
				,"DATA_TYPE_real" INT
				,"DATA_TYPE_smalldatetime" INT 
				,"DATA_TYPE_smallint" INT
				,"DATA_TYPE_text" INT
				,"DATA_TYPE_timestamp" INT 
				,"DATA_TYPE_tinyint" INT
				,"DATA_TYPE_varbinary" INT
				,"DATA_TYPE_varchar" INT
				,"CHARACTER_MAXIMUM_LENGTH" INT 
				,"NUMERIC_PRECISION_RADIX" INT
				,"NUMERIC_SCALE" INT
				,"CONSTRAINT_TYPE_CHECK" INT 
				,"CONSTRAINT_TYPE_FOREIGN KEY" INT 
				,"CONSTRAINT_TYPE_PRIMARY KEY" INT
				,"CONSTRAINT_TYPE_UNIQUE" INT
				,"CONTAINS_ID" INT
				,"CONTAINS_NAME" INT
				,"CONTAINS_NUMBER" INT
				,"CONTAINS_KEY" INT
				,"COLUMN_NAME_LENGTH" INT
			    ,"BUSINESS_KEY" INT
                ,"PredictedBusinesskeys" INT
              ));
END;
GO

IF OBJECT_ID('metadatatest_numeric_predictedkeys', 'u') IS NOT NULL 
  DROP TABLE metadatatest_numeric_predictedkeys;

  CREATE TABLE metadatatest_numeric_predictedkeys (	
	 [META_ID] int
	,[ORDINAL_POSITION] int
	,[IS_NULLABLE] int
    ,[DATA_TYPE_bigint] int	
	,[DATA_TYPE_bit] int
	,[DATA_TYPE_char] int
	,[DATA_TYPE_date] int
	,[DATA_TYPE_datetime] int
	,[DATA_TYPE_datetime2] int
	,[DATA_TYPE_decimal] int
	,[DATA_TYPE_float] int
	,[DATA_TYPE_geography] int
	,[DATA_TYPE_geometry] int
	,[DATA_TYPE_image] int
	,[DATA_TYPE_int] int
	,[DATA_TYPE_nchar] int
	,[DATA_TYPE_ntext] int
	,[DATA_TYPE_nvarchar] int
	,[DATA_TYPE_real] int
	,[DATA_TYPE_smalldatetime] int
	,[DATA_TYPE_smallint] int
	,[DATA_TYPE_text] int
	,[DATA_TYPE_timestamp] int
	,[DATA_TYPE_tinyint] int
	,[DATA_TYPE_varbinary] int
	,[DATA_TYPE_varchar] int
    ,[CHARACTER_MAXIMUM_LENGTH] int	
    ,[NUMERIC_PRECISION_RADIX] int
    ,[NUMERIC_SCALE] int	
	,[CONSTRAINT_TYPE_CHECK] int
	,[CONSTRAINT_TYPE_FOREIGN KEY] int
	,[CONSTRAINT_TYPE_PRIMARY KEY] int
	,[CONSTRAINT_TYPE_UNIQUE] int
	,[BUSINESS_KEY] int
	,[CONTAINS_ID] int
	,[CONTAINS_NAME] int
	,[CONTAINS_NUMBER] int
	,[CONTAINS_KEY] int
	,[COLUMN_NAME_LENGTH] int
	,[PredictedBusinesskeys] int
); 

INSERT metadatatest_numeric_predictedkeys EXECUTE predict_businesskeys_decisiontree 'Decision Tree';
GO

-- Joining predicted business keys to the categorical metadata, which we can use to start building the data vault

IF OBJECT_ID('metadatatest_predictedkeys', 'u') IS NOT NULL 
  DROP TABLE metadatatest_predictedkeys;

  CREATE TABLE metadatatest_predictedkeys (
	   [META_ID] int
      ,[TABLE_CATALOG] nvarchar(128)
      ,[TABLE_SCHEMA] nvarchar(128)
      ,[TABLE_NAME] nvarchar(128)
      ,[COLUMN_NAME] nvarchar(128)
      ,[ORDINAL_POSITION] int
      ,[IS_NULLABLE] varchar(3)
      ,[DATA_TYPE] nvarchar(128)
      ,[CHARACTER_MAXIMUM_LENGTH] int
      ,[CHARACTER_OCTET_LENGTH] int
      ,[NUMERIC_PRECISION] 	tinyint
      ,[NUMERIC_PRECISION_RADIX] smallint
      ,[NUMERIC_SCALE] int
      ,[DATETIME_PRECISION] smallint
      ,[CHARACTER_SET_NAME] nvarchar(128)
	  ,[CONSTRAINT_TYPE] varchar(11)
	  ,[BUSINESS_KEY] int
	  ,[FOREIGN_KEY] int
	  ,[PRIMARY KEY] int
	  ,[CONTAINS_ID] int
	  ,[CONTAINS_NAME] int
	  ,[CONTAINS_NUMBER] int
	  ,[CONTAINS_NODE] int
	  ,[CONTAINS_KEY] int
	  ,[COLUMN_NAME_LENGTH] int
	  ,[PredictedBusinesskeys] int
); 

INSERT INTO 
       metadatatest_predictedkeys([META_ID],[TABLE_CATALOG],[TABLE_SCHEMA],[TABLE_NAME],[COLUMN_NAME],[ORDINAL_POSITION],[IS_NULLABLE],[DATA_TYPE],[CHARACTER_MAXIMUM_LENGTH],[CHARACTER_OCTET_LENGTH]
      ,[NUMERIC_PRECISION],[NUMERIC_PRECISION_RADIX],[NUMERIC_SCALE],[DATETIME_PRECISION],[CHARACTER_SET_NAME],[CONSTRAINT_TYPE],[BUSINESS_KEY], [FOREIGN_KEY], [PRIMARY KEY],[CONTAINS_ID]
	  ,[CONTAINS_NAME],[CONTAINS_NUMBER],[CONTAINS_NODE],[CONTAINS_KEY],[COLUMN_NAME_LENGTH], [PredictedBusinesskeys]) 
	SELECT
		mdt.[META_ID],mdt.[TABLE_CATALOG],mdt.[TABLE_SCHEMA],mdt.[TABLE_NAME],mdt.[COLUMN_NAME],mdt.[ORDINAL_POSITION],mdt.[IS_NULLABLE],mdt.[DATA_TYPE],mdt.[CHARACTER_MAXIMUM_LENGTH],mdt.[CHARACTER_OCTET_LENGTH]
        ,mdt.[NUMERIC_PRECISION],mdt.[NUMERIC_PRECISION_RADIX],mdt.[NUMERIC_SCALE],mdt.[DATETIME_PRECISION],mdt.[CHARACTER_SET_NAME],mdt.[CONSTRAINT_TYPE],ISNULL(mdt.[BUSINESS_KEY],0) 
		,ISNULL(mdt.[FOREIGN_KEY],0), ISNULL(mdt.[PRIMARY KEY],0),mdt.[CONTAINS_ID],mdt.[CONTAINS_NAME],mdt.[CONTAINS_NUMBER],mdt.[CONTAINS_NODE],mdt.[CONTAINS_KEY],mdt.[COLUMN_NAME_LENGTH], mdtnpk.[PredictedBusinesskeys]
	FROM
	    metadatatest mdt
		LEFT JOIN metadatatest_numeric_predictedkeys mdtnpk ON mdtnpk.META_ID=mdt.META_ID
		ORDER BY mdt.[TABLE_NAME], mdt.COLUMN_NAME
		

-- Removing unnecessary tables for the build

IF OBJECT_ID('keys_train', 'u') IS NOT NULL 
  DROP TABLE keys_train;

IF OBJECT_ID('column_data_train', 'u') IS NOT NULL 
  DROP TABLE column_data_train;

IF OBJECT_ID('metadatatrain', 'u') IS NOT NULL 
  DROP TABLE metadatatrain;

IF OBJECT_ID('metadatatrain_numeric', 'u') IS NOT NULL 
  DROP TABLE metadatatrain_numeric;

IF OBJECT_ID('keys_test', 'u') IS NOT NULL 
  DROP TABLE keys_test;

IF OBJECT_ID('column_data_test', 'u') IS NOT NULL 
  DROP TABLE column_data_test;

IF OBJECT_ID('metadatatest', 'u') IS NOT NULL 
  DROP TABLE metadatatest;

IF OBJECT_ID('metadatatest_numeric', 'u') IS NOT NULL 
  DROP TABLE metadatatest_numeric;

IF OBJECT_ID('metadatatest_numeric_predictedkeys', 'u') IS NOT NULL 
  DROP TABLE metadatatest_numeric_predictedkeys;


-- The Data Vault 2.0 Creation Automatization part

USE AdventureWorks2017

-- Creating hashkeys -function. If had run once, one does not have to run twice. Take out of comments to run. This has to be run separately from other code.
/*
CREATE FUNCTION [dbo].[GetHashkey]
(
     @ParamHashSeed VARCHAR(8000) = ''
)
RETURNS VARCHAR(32)
WITH SCHEMABINDING
AS
BEGIN
    DECLARE @Result VARCHAR(32)
	SET @Result = UPPER(CONVERT(VARCHAR(32),HASHBYTES('MD5', UPPER(@ParamHashSeed)),2))
    RETURN @Result
END
*/


-- Creation of Hubs

-- Declaring global variables
DECLARE @Counter0 INT
DECLARE @Counter INT 
DECLARE @Counter2 INT 
DECLARE @schemaname nvarchar(500)
DECLARE @tablename nvarchar(500)
DECLARE @columnname nvarchar(500)
DECLARE @tablequery nvarchar(MAX)
DECLARE @datatype nvarchar(500)
DECLARE @length nvarchar(500)
DECLARE @insert1 nvarchar(500)
DECLARE @insert2 nvarchar(500)
SET @Counter0=1
SET @Counter=1
SET @Counter2=1

-- Starting the three loops through schemas, tables and columns
WHILE ( @Counter0 <= (Select count(distinct TABLE_SCHEMA) From dbo.metadatatest_predictedkeys))
	BEGIN
		SET @schemaname = (Select TABLE_SCHEMA
							  From 
							  (Select 
								  Count(TABLE_SCHEMA) Over (Order By TABLE_SCHEMA) As countSchemas
								  ,TABLE_SCHEMA
								  From dbo.metadatatest_predictedkeys
								  Group by TABLE_SCHEMA
							  ) tableNames
							Where countSchemas = @Counter0)

		WHILE ( @Counter <= (Select count(distinct table_name) From dbo.metadatatest_predictedkeys WHERE TABLE_SCHEMA=@schemaname))

		BEGIN
			SET @tablename = (Select table_name
								  From 
								  (Select 
									  Count(table_name) Over (Order By table_name) As countColumns
									  ,table_name
									  ,TABLE_SCHEMA
									  From dbo.metadatatest_predictedkeys
									  WHERE @schemaname=TABLE_SCHEMA
									  Group by TABLE_NAME, TABLE_SCHEMA
								  ) tableNames
								Where countColumns = @Counter)

			SET @tablequery = 'IF OBJECT_ID(''[edw].[H_'+@tablename+']'', ''u'') IS NOT NULL 
									DROP TABLE [edw].[H_'+@tablename+'];
									
								CREATE TABLE [edw].[H_'+@tablename+'](
									HASHKEY VARCHAR(32) NULL,
									CHECKSUM VARCHAR(32) NULL,
									SOURCE nvarchar(500) NULL,
									LOADTIME datetime2(7) NULL
								)'
			EXEC (@tablequery)


			WHILE ( @Counter2 <= (SELECT Count(distinct column_name) FROM metadatatest_predictedkeys WHERE TABLE_SCHEMA=@schemaname AND TABLE_NAME=@tablename AND PredictedBusinesskeys=1))

			BEGIN
				SET @columnname = (SELECT COLUMN_NAME 
								  FROM
								  (SELECT Count(COLUMN_NAME) Over (Order By column_name) As RowNum, TABLE_NAME, COLUMN_NAME
								   FROM metadatatest_predictedkeys
								   WHERE TABLE_SCHEMA=@schemaname AND TABLE_NAME=@tablename AND PredictedBusinesskeys=1 Group by TABLE_NAME, COLUMN_NAME) columnNames
								   Where RowNum = @Counter2)

				SET @datatype = (SELECT DATA_TYPE 
								  FROM
								  (SELECT Count(COLUMN_NAME) Over (Order By column_name) As RowNum, TABLE_NAME, COLUMN_NAME, DATA_TYPE
								   FROM metadatatest_predictedkeys
								   WHERE TABLE_SCHEMA=@schemaname AND TABLE_NAME=@tablename AND PredictedBusinesskeys=1 Group by TABLE_NAME, COLUMN_NAME, DATA_TYPE) columnNames
								   Where RowNum = @Counter2)

				SET @length = (SELECT CHARACTER_MAXIMUM_LENGTH 
								  FROM
								  (SELECT Count(COLUMN_NAME) Over (Order By column_name) As RowNum, TABLE_NAME, COLUMN_NAME, DATA_TYPE, CHARACTER_MAXIMUM_LENGTH 
								   FROM metadatatest_predictedkeys
								   WHERE TABLE_SCHEMA=@schemaname AND TABLE_NAME=@tablename AND PredictedBusinesskeys=1 Group by TABLE_NAME, COLUMN_NAME, DATA_TYPE, CHARACTER_MAXIMUM_LENGTH ) columnNames
								   Where RowNum = @Counter2)

				--Handling certain types of data for the future insert and creatiing table altering inserts
				IF @datatype='hierarchyid'
						SET @datatype='nvarchar'

				SET @insert1 = @columnname+' '+@datatype+'('+@length+') NULL'
				SET @insert2 = @columnname+' '+@datatype+' NULL'


				IF @datatype IN ('nvarchar','varchar','nchar','char')
					EXEC ('ALTER TABLE [edw].[H_'+@tablename+'] ADD '+@insert1+'')
				ELSE
					EXEC ('ALTER TABLE [edw].[H_'+@tablename+'] ADD '+@insert2+'')

				SET @Counter2  = @Counter2+ 1
			END

			
			-- Inserting data to created hub-tables
			EXEC('TRUNCATE TABLE edw.H_'+@tablename)

			DECLARE @columnset nvarchar(MAX)

			SET @columnset =(SELECT STRING_AGG(COLUMN_NAME, ', ')
							FROM
							(SELECT Count(COLUMN_NAME) As CountCol, TABLE_NAME, COLUMN_NAME
							FROM metadatatest_predictedkeys
							WHERE TABLE_NAME=@tablename AND PredictedBusinesskeys=1 Group by TABLE_NAME, COLUMN_NAME) columnNames)


			-- hashkey and checksum uses the same logic and MD5-algorithm over here. However checksum will be calculating the row level changes from now
			-- while hashkey calculates businesskey level changes, both excluding loadtime

			DECLARE @hashkey nvarchar(MAX)
			SET @hashkey =(
			SELECT STRING_AGG(COLUMN_NAME, ', ''|'', ')
				FROM
				(SELECT Count(COLUMN_NAME) As CountCol, TABLE_NAME, COLUMN_NAME
				FROM metadatatest_predictedkeys
				WHERE TABLE_NAME=@tablename AND PredictedBusinesskeys=1 Group by TABLE_NAME, COLUMN_NAME) columnNames)


			DECLARE @checksum nvarchar(MAX)
			SET @checksum =(
			SELECT STRING_AGG(COLUMN_NAME, ', ''|'', ')
				FROM
				(SELECT Count(COLUMN_NAME) As CountCol, TABLE_NAME, COLUMN_NAME
				FROM metadatatest_predictedkeys
				WHERE TABLE_NAME=@tablename AND PredictedBusinesskeys=1 Group by TABLE_NAME, COLUMN_NAME) columnNames)

			--Creating insert-query and handling customized tables and columns
			DECLARE @query nvarchar(MAX)

			IF @tablename='ProductDocument'

				SET @query = '
				DECLARE @hierarchytableproddoc TABLE(
					[ProductID] int NOT NULL,
					[DocumentNode] nvarchar (892) NOT NULL,
					[ModifiedDate] datetime NOT NULL
				);

				INSERT INTO @hierarchytableproddoc ([ProductID],[DocumentNode],[ModifiedDate])
				SELECT [ProductID], CONVERT(nvarchar(892), DocumentNode) AS DocumentNode, [ModifiedDate]
				FROM Production.ProductDocument
				
				INSERT INTO edw.H_'+@tablename+' (HASHKEY, CHECKSUM, SOURCE, LOADTIME, '+@columnset+')
				SELECT dbo.GetHashkey(CONCAT('+@hashkey+', ''|'', TRIM(''AdventureWorks2017'') )), dbo.GetHashkey(CONCAT('+@checksum+', ''|'', TRIM(''AdventureWorks2017'') )), ''AdventureWorks2017'', GETDATE(), '+@columnset+'
				from @hierarchytableproddoc'

			ELSE IF @tablename='Document'
				SET @query = '
				DECLARE @hierarchytabledoc TABLE(
						[DocumentNode] nvarchar (892) NOT NULL,
						[Title] nvarchar(50) NOT NULL,
						[Owner] int NOT NULL,
						[FolderFlag] bit NOT NULL,
						[FileName] nvarchar(400) NOT NULL,
						[FileExtension] nvarchar(8) NOT NULL,
						[Revision] nchar(5) NOT NULL,
						[ChangeNumber] int NOT NULL,
						[Status] tinyint NOT NULL,
						[DocumentSummary] nvarchar(max) NULL,
						[Document] varbinary(max) NULL,
						[rowguid] uniqueidentifier ROWGUIDCOL  NOT NULL,
						[ModifiedDate] datetime NOT NULL
				);

				INSERT INTO @hierarchytabledoc([DocumentNode],[Title],[Owner],[FolderFlag],[FileName],[FileExtension],[Revision],[ChangeNumber],[Status],
						[DocumentSummary],[Document],[rowguid],[ModifiedDate])
				SELECT CONVERT(nvarchar(892), [DocumentNode]) AS [DocumentNode],[Title],[Owner],[FolderFlag],[FileName],[FileExtension],[Revision],[ChangeNumber],[Status],
						[DocumentSummary],[Document],[rowguid],[ModifiedDate]
				FROM Production.Document
				
				INSERT INTO edw.H_'+@tablename+' (HASHKEY, CHECKSUM, SOURCE, LOADTIME, '+@columnset+')
				SELECT dbo.GetHashkey(CONCAT('+@hashkey+', ''|'', TRIM(''AdventureWorks2017'') )), dbo.GetHashkey(CONCAT('+@checksum+', ''|'', TRIM(''AdventureWorks2017'') )), ''AdventureWorks2017'', GETDATE(), '+@columnset+'
				from @hierarchytabledoc'

			ELSE IF @tablename='Employee'
				SET @query = '
				DECLARE @hierarchytableemp TABLE(
					[BusinessEntityID] int NOT NULL,
					[NationalIDNumber] nvarchar(15) NOT NULL,
					[LoginID] nvarchar(256) NOT NULL,
					[OrganizationNode] nvarchar(892) NULL,
					[JobTitle] nvarchar(50) NOT NULL,
					[BirthDate] date NOT NULL,
					[MaritalStatus] nchar(1) NOT NULL,
					[Gender] nchar(1) NOT NULL,
					[HireDate] date NOT NULL,
					[SalariedFlag] dbo.Flag NOT NULL,
					[VacationHours] smallint NOT NULL,
					[SickLeaveHours] smallint NOT NULL,
					[CurrentFlag] dbo.Flag NOT NULL,
					[rowguid] uniqueidentifier ROWGUIDCOL  NOT NULL,
					[ModifiedDate] datetime NOT NULL
				);

				INSERT INTO @hierarchytableemp ([BusinessEntityID],[NationalIDNumber],[LoginID],[OrganizationNode],[JobTitle],[BirthDate],[MaritalStatus],[Gender],
				[HireDate],[SalariedFlag],[VacationHours],[SickLeaveHours],[CurrentFlag],[rowguid],[ModifiedDate])
				SELECT [BusinessEntityID],[NationalIDNumber],[LoginID],CONVERT(nvarchar(892), [OrganizationNode]) AS [OrganizationNode],[JobTitle],[BirthDate],[MaritalStatus],[Gender],
				[HireDate],[SalariedFlag],[VacationHours],[SickLeaveHours],[CurrentFlag],[rowguid],[ModifiedDate]
				FROM HumanResources.Employee
				
				INSERT INTO edw.H_'+@tablename+' (HASHKEY, CHECKSUM, SOURCE, LOADTIME, '+@columnset+')
				SELECT dbo.GetHashkey(CONCAT('+@hashkey+', ''|'', TRIM(''AdventureWorks2017'') )), dbo.GetHashkey(CONCAT('+@checksum+', ''|'', TRIM(''AdventureWorks2017'') )), ''AdventureWorks2017'', GETDATE(), '+@columnset+'
				from @hierarchytableemp'
			ELSE
				SET @query = 'INSERT INTO edw.H_'+@tablename+' (HASHKEY, CHECKSUM, SOURCE, LOADTIME, '+@columnset+')
				SELECT dbo.GetHashkey(CONCAT('+@hashkey+', ''|'', TRIM(''AdventureWorks2017'') )), dbo.GetHashkey(CONCAT('+@checksum+', ''|'', TRIM(''AdventureWorks2017'') )), ''AdventureWorks2017'', GETDATE(), '+@columnset+'
				from '+@schemaname+'.'+@tablename+''

			EXEC(@query)

			-- Removing empty hubs by comparing the number of columns to the default columns of 4
			DECLARE @defaultcolumns int
			SET @defaultcolumns = (SELECT COUNT(*)
								FROM INFORMATION_SCHEMA.COLUMNS
								WHERE table_catalog = 'AdventureWorks2017' -- the database
									AND TABLE_SCHEMA = 'edw'
									AND table_name = 'H_'+@tablename)

			IF @defaultcolumns<=4
				EXEC('DROP TABLE edw.H_'+@tablename)

			SET @Counter  = @Counter+ 1
			SET @Counter2  = 1
		END

		SET @Counter0 = @Counter0 + 1
		SET @Counter  = 1
	END


-- Creation of Links

DECLARE @Counter0L INT
DECLARE @CounterL INT 
DECLARE @Counter2L INT 
DECLARE @schemanameL nvarchar(500)
DECLARE @tablenameL nvarchar(500)
DECLARE @columnnameL nvarchar(500)
DECLARE @tablequeryL nvarchar(MAX)
DECLARE @datatypeL nvarchar(500)
DECLARE @lengthL nvarchar(500)
DECLARE @insert1L nvarchar(500)
DECLARE @insert2L nvarchar(500)
SET @Counter0L=1
SET @CounterL=1
SET @Counter2L=1

-- Starting the three loops through schemas, tables and columns
WHILE ( @Counter0L <= (Select count(distinct TABLE_SCHEMA) From dbo.metadatatest_predictedkeys))
	BEGIN
		SET @schemanameL = (Select TABLE_SCHEMA
							  From 
							  (Select 
								  Count(TABLE_SCHEMA) Over (Order By TABLE_SCHEMA) As countSchemas
								  ,TABLE_SCHEMA
								  From dbo.metadatatest_predictedkeys
								  Group by TABLE_SCHEMA
							  ) tableNames
							Where countSchemas = @Counter0L)

		WHILE ( @CounterL <= (Select count(distinct table_name) From dbo.metadatatest_predictedkeys WHERE TABLE_SCHEMA=@schemanameL))

		BEGIN
			SET @tablenameL = (Select table_name
								  From 
								  (Select 
									  Count(table_name) Over (Order By table_name) As countColumns
									  ,table_name
									  ,TABLE_SCHEMA
									  From dbo.metadatatest_predictedkeys
									  WHERE @schemanameL=TABLE_SCHEMA
									  Group by TABLE_NAME, TABLE_SCHEMA
								  ) tableNames
								Where countColumns = @CounterL)

			SET @tablequeryL = 'IF OBJECT_ID(''[edw].[L_'+@tablenameL+']'', ''u'') IS NOT NULL 
									DROP TABLE [edw].[L_'+@tablenameL+'];
									
								CREATE TABLE [edw].[L_'+@tablenameL+'](
									HASHKEY VARCHAR(32) NULL,
									CHECKSUM VARCHAR(32) NULL,
									SOURCE nvarchar(500) NULL,
									LOADTIME datetime2(7) NULL
								)'
			EXEC (@tablequeryL)


			WHILE ( @Counter2L <= (SELECT Count(distinct column_name) FROM metadatatest_predictedkeys WHERE TABLE_SCHEMA=@schemanameL AND TABLE_NAME=@tablenameL AND (CONSTRAINT_TYPE='FOREIGN KEY' OR PredictedBusinesskeys=1)))

			BEGIN
				SET @columnnameL = (SELECT COLUMN_NAME 
								  FROM
								  (SELECT Count(COLUMN_NAME) Over (Order By column_name) As RowNum, TABLE_NAME, COLUMN_NAME
								   FROM metadatatest_predictedkeys
								   WHERE TABLE_SCHEMA=@schemanameL AND TABLE_NAME=@tablenameL AND (CONSTRAINT_TYPE='FOREIGN KEY' OR PredictedBusinesskeys=1) Group by TABLE_NAME, COLUMN_NAME) columnNames
								   Where RowNum = @Counter2L)

				SET @datatypeL = (SELECT DATA_TYPE 
									FROM
									(SELECT Count(COLUMN_NAME) Over (Order By column_name) As RowNum, TABLE_NAME, COLUMN_NAME, DATA_TYPE
									FROM metadatatest_predictedkeys
									WHERE TABLE_SCHEMA=@schemanameL AND TABLE_NAME=@tablenameL AND (CONSTRAINT_TYPE='FOREIGN KEY' OR PredictedBusinesskeys=1) Group by TABLE_NAME, COLUMN_NAME, DATA_TYPE) columnNames
									Where RowNum = @Counter2L)

				SET @lengthL = (SELECT CHARACTER_MAXIMUM_LENGTH 
								  FROM
								  (SELECT Count(COLUMN_NAME) Over (Order By column_name) As RowNum, TABLE_NAME, COLUMN_NAME, DATA_TYPE, CHARACTER_MAXIMUM_LENGTH 
								   FROM metadatatest_predictedkeys
								   WHERE TABLE_SCHEMA=@schemanameL AND TABLE_NAME=@tablenameL AND (CONSTRAINT_TYPE='FOREIGN KEY' OR PredictedBusinesskeys=1) Group by TABLE_NAME, COLUMN_NAME, DATA_TYPE, CHARACTER_MAXIMUM_LENGTH ) columnNames
								   Where RowNum = @Counter2L)

				--Handling certain types of data for the future insert and creatiing table altering inserts

				IF @datatypeL='hierarchyid'
						SET @datatypeL='nvarchar'

				SET @insert1L = @columnnameL+' '+@datatypeL+'('+@lengthL+') NULL'
				SET @insert2L = @columnnameL+' '+@datatypeL+' NULL'


				IF @datatypeL IN ('nvarchar','varchar','nchar','char')
					EXEC ('ALTER TABLE [edw].[L_'+@tablenameL+'] ADD '+@insert1L+'')
				ELSE
					EXEC ('ALTER TABLE [edw].[L_'+@tablenameL+'] ADD '+@insert2L+'')


				SET @Counter2L  = @Counter2L+ 1
			END

			-- Inserting data into links
			EXEC('TRUNCATE TABLE edw.L_'+@tablenameL)

			DECLARE @columnsetL nvarchar(MAX)
			SET @columnsetL =(
			SELECT STRING_AGG(COLUMN_NAME, ', ')
					FROM
					(SELECT COUNT(COLUMN_NAME) AS CountCol, TABLE_NAME, COLUMN_NAME
					FROM metadatatest_predictedkeys
					WHERE TABLE_NAME=@tablenameL AND (CONSTRAINT_TYPE='FOREIGN KEY' OR PredictedBusinesskeys=1) Group by TABLE_NAME, COLUMN_NAME) columnNames)


			-- hashkey and checksum uses the same logic and MD5-algorithm over here. However checksum will be calculating the row level changes from now
			-- while hashkey calculates businesskey level changes, both excluding loadtime

			DECLARE @hashkeyL nvarchar(MAX)
			SET @hashkeyL =(
				SELECT STRING_AGG(COLUMN_NAME, ', ''|'', ')
					FROM
					(SELECT COUNT(COLUMN_NAME) AS CountCol, TABLE_NAME, COLUMN_NAME
					FROM metadatatest_predictedkeys
					WHERE TABLE_NAME=@tablenameL AND PredictedBusinesskeys=1 Group by TABLE_NAME, COLUMN_NAME) columnNames)


			DECLARE @checksumL nvarchar(MAX)
			SET @checksumL =(
				SELECT STRING_AGG(COLUMN_NAME, ', ''|'', ')
					FROM
					(SELECT COUNT(COLUMN_NAME) AS CountCol, TABLE_NAME, COLUMN_NAME
					FROM metadatatest_predictedkeys
					WHERE TABLE_NAME=@tablenameL AND (CONSTRAINT_TYPE='FOREIGN KEY' OR PredictedBusinesskeys=1) Group by TABLE_NAME, COLUMN_NAME) columnNames)

			--Creating insert-query and handling customized tables and columns

			DECLARE @queryL nvarchar(MAX)

			IF @tablenameL='ProductDocument'

				SET @queryL = '
				DECLARE @hierarchytableproddocL TABLE(
					[ProductID] int NOT NULL,
					[DocumentNode] nvarchar (892) NOT NULL,
					[ModifiedDate] datetime NOT NULL
				);

				INSERT INTO @hierarchytableproddocL ([ProductID],[DocumentNode],[ModifiedDate])
				SELECT [ProductID], CONVERT(nvarchar(892), DocumentNode) AS DocumentNode, [ModifiedDate]
				FROM Production.ProductDocument
				
				INSERT INTO edw.L_'+@tablenameL+' (HASHKEY, CHECKSUM, SOURCE, LOADTIME, '+@columnsetL+')
				SELECT dbo.GetHashkey(CONCAT('+@hashkeyL+', ''|'', TRIM(''AdventureWorks2017'') )), dbo.GetHashkey(CONCAT('+@checksumL+', ''|'', TRIM(''AdventureWorks2017'') )), ''AdventureWorks2017'', GETDATE(), '+@columnsetL+'
				from @hierarchytableproddocL'

			ELSE IF @tablenameL='Document'
				SET @queryL = '
				DECLARE @hierarchytabledocL TABLE(
						[DocumentNode] nvarchar (892) NOT NULL,
						[Title] nvarchar(50) NOT NULL,
						[Owner] int NOT NULL,
						[FolderFlag] bit NOT NULL,
						[FileName] nvarchar(400) NOT NULL,
						[FileExtension] nvarchar(8) NOT NULL,
						[Revision] nchar(5) NOT NULL,
						[ChangeNumber] int NOT NULL,
						[Status] tinyint NOT NULL,
						[DocumentSummary] nvarchar(max) NULL,
						[Document] varbinary(max) NULL,
						[rowguid] uniqueidentifier ROWGUIDCOL  NOT NULL,
						[ModifiedDate] datetime NOT NULL
				);

				INSERT INTO @hierarchytabledocL([DocumentNode],[Title],[Owner],[FolderFlag],[FileName],[FileExtension],[Revision],[ChangeNumber],[Status],
						[DocumentSummary],[Document],[rowguid],[ModifiedDate])
				SELECT CONVERT(nvarchar(892), [DocumentNode]) AS [DocumentNode],[Title],[Owner],[FolderFlag],[FileName],[FileExtension],[Revision],[ChangeNumber],[Status],
						[DocumentSummary],[Document],[rowguid],[ModifiedDate]
				FROM Production.Document
				
				INSERT INTO edw.L_'+@tablenameL+' (HASHKEY, CHECKSUM, SOURCE, LOADTIME, '+@columnsetL+')
				SELECT dbo.GetHashkey(CONCAT('+@hashkeyL+', ''|'', TRIM(''AdventureWorks2017'') )), dbo.GetHashkey(CONCAT('+@checksumL+', ''|'', TRIM(''AdventureWorks2017'') )), ''AdventureWorks2017'', GETDATE(), '+@columnsetL+'
				from @hierarchytabledocL'

			ELSE IF @tablenameL='Employee'
				SET @queryL = '
				DECLARE @hierarchytableempL TABLE(
					[BusinessEntityID] int NOT NULL,
					[NationalIDNumber] nvarchar(15) NOT NULL,
					[LoginID] nvarchar(256) NOT NULL,
					[OrganizationNode] nvarchar(892) NULL,
					[JobTitle] nvarchar(50) NOT NULL,
					[BirthDate] date NOT NULL,
					[MaritalStatus] nchar(1) NOT NULL,
					[Gender] nchar(1) NOT NULL,
					[HireDate] date NOT NULL,
					[SalariedFlag] dbo.Flag NOT NULL,
					[VacationHours] smallint NOT NULL,
					[SickLeaveHours] smallint NOT NULL,
					[CurrentFlag] dbo.Flag NOT NULL,
					[rowguid] uniqueidentifier ROWGUIDCOL  NOT NULL,
					[ModifiedDate] datetime NOT NULL
				);

				INSERT INTO @hierarchytableempL ([BusinessEntityID],[NationalIDNumber],[LoginID],[OrganizationNode],[JobTitle],[BirthDate],[MaritalStatus],[Gender],
				[HireDate],[SalariedFlag],[VacationHours],[SickLeaveHours],[CurrentFlag],[rowguid],[ModifiedDate])
				SELECT [BusinessEntityID],[NationalIDNumber],[LoginID],CONVERT(nvarchar(892), [OrganizationNode]) AS [OrganizationNode],[JobTitle],[BirthDate],[MaritalStatus],[Gender],
				[HireDate],[SalariedFlag],[VacationHours],[SickLeaveHours],[CurrentFlag],[rowguid],[ModifiedDate]
				FROM HumanResources.Employee
				
				INSERT INTO edw.L_'+@tablenameL+' (HASHKEY, CHECKSUM, SOURCE, LOADTIME, '+@columnsetL+')
				SELECT dbo.GetHashkey(CONCAT('+@hashkeyL+', ''|'', TRIM(''AdventureWorks2017'') )), dbo.GetHashkey(CONCAT('+@checksumL+', ''|'', TRIM(''AdventureWorks2017'') )), ''AdventureWorks2017'', GETDATE(), '+@columnsetL+'
				from @hierarchytableempL'
			ELSE
				SET @queryL = 'INSERT INTO edw.L_'+@tablenameL+' (HASHKEY, CHECKSUM, SOURCE, LOADTIME, '+@columnsetL+')
				SELECT dbo.GetHashkey(CONCAT('+@hashkeyL+', ''|'', TRIM(''AdventureWorks2017'') )), dbo.GetHashkey(CONCAT('+@checksumL+', ''|'', TRIM(''AdventureWorks2017'') )), ''AdventureWorks2017'', GETDATE(), '+@columnsetL+'
				from '+@schemanameL+'.'+@tablenameL+''

			EXEC(@queryL)

			-- Removing links without foreign keys by comparing the number of columns to the hub columns
			DECLARE @defaultcolumnsH int
			SET @defaultcolumnsH = (SELECT COUNT(*)
								FROM INFORMATION_SCHEMA.COLUMNS
								WHERE table_catalog = 'AdventureWorks2017' -- the database
									AND TABLE_SCHEMA = 'edw'
									AND table_name = 'H_'+@tablenameL)


			DECLARE @defaultcolumnsL int
			SET @defaultcolumnsL = (SELECT COUNT(*)
								FROM INFORMATION_SCHEMA.COLUMNS
								WHERE table_catalog = 'AdventureWorks2017' -- the database
									AND TABLE_SCHEMA = 'edw'
									AND table_name = 'L_'+@tablenameL)

			IF @defaultcolumnsH=@defaultcolumnsL OR @defaultcolumnsL=4
				EXEC('DROP TABLE edw.L_'+@tablenameL)

			SET @CounterL  = @CounterL+ 1
			SET @Counter2L  = 1

		END

		SET @Counter0L = @Counter0L + 1
		SET @CounterL  = 1

	END


-- Creation of Satellites

DECLARE @Counter0S INT
DECLARE @CounterS INT 
DECLARE @Counter2S INT 
DECLARE @schemanameS nvarchar(500)
DECLARE @tablenameS nvarchar(500)
DECLARE @columnnameS nvarchar(500)
DECLARE @tablequeryS nvarchar(MAX)
DECLARE @datatypeS nvarchar(500)
DECLARE @lengthS nvarchar(500)
DECLARE @insert1S nvarchar(500)
DECLARE @insert2S nvarchar(500)
SET @Counter0S=1
SET @CounterS=1
SET @Counter2S=1

-- Starting the three loops through schemas, tables and columns
WHILE ( @Counter0S <= (Select count(distinct TABLE_SCHEMA) From dbo.metadatatest_predictedkeys))
	BEGIN
		SET @schemanameS = (Select TABLE_SCHEMA
							  From 
							  (Select 
								  Count(TABLE_SCHEMA) Over (Order By TABLE_SCHEMA) As countSchemas
								  ,TABLE_SCHEMA
								  From dbo.metadatatest_predictedkeys
								  Group by TABLE_SCHEMA
							  ) tableNames
							Where countSchemas = @Counter0S)

		WHILE ( @CounterS <= (Select count(distinct table_name) From dbo.metadatatest_predictedkeys WHERE TABLE_SCHEMA=@schemanameS))

		BEGIN
			SET @tablenameS = (Select table_name
								  From 
								  (Select 
									  Count(table_name) Over (Order By table_name) As countColumns
									  ,table_name
									  ,TABLE_SCHEMA
									  From dbo.metadatatest_predictedkeys
									  WHERE @schemanameS=TABLE_SCHEMA
									  Group by TABLE_NAME, TABLE_SCHEMA
								  ) tableNames
								Where countColumns = @CounterS)

			SET @tablequeryS = 'IF OBJECT_ID(''[edw].[S_'+@tablenameS+']'', ''u'') IS NOT NULL 
									DROP TABLE [edw].[S_'+@tablenameS+'];
									
								CREATE TABLE [edw].[S_'+@tablenameS+'](
									HASHKEY VARCHAR(32) NULL,
									CHECKSUM VARCHAR(32) NULL,
									SOURCE nvarchar(500) NULL,
									LOADTIME datetime2(7) NULL
								)'
			EXEC (@tablequeryS)


			WHILE ( @Counter2S <= (SELECT Count(distinct column_name) FROM metadatatest_predictedkeys WHERE TABLE_SCHEMA=@schemanameS AND TABLE_NAME=@tablenameS))

			BEGIN
				SET @columnnameS = (SELECT COLUMN_NAME 
								  FROM
								  (SELECT Count(COLUMN_NAME) Over (Order By column_name) As RowNum, TABLE_NAME, COLUMN_NAME
								   FROM metadatatest_predictedkeys
								   WHERE TABLE_SCHEMA=@schemanameS AND TABLE_NAME=@tablenameS Group by TABLE_NAME, COLUMN_NAME) columnNames
								   Where RowNum = @Counter2S)

				SET @datatypeS = (SELECT DATA_TYPE 
								  FROM
								  (SELECT Count(COLUMN_NAME) Over (Order By column_name) As RowNum, TABLE_NAME, COLUMN_NAME, DATA_TYPE
								   FROM metadatatest_predictedkeys
								   WHERE TABLE_SCHEMA=@schemanameS AND TABLE_NAME=@tablenameS Group by TABLE_NAME, COLUMN_NAME, DATA_TYPE) columnNames
								   Where RowNum = @Counter2S)

				SET @lengthS = (SELECT CHARACTER_MAXIMUM_LENGTH 
								  FROM
								  (SELECT Count(COLUMN_NAME) Over (Order By column_name) As RowNum, TABLE_NAME, COLUMN_NAME, DATA_TYPE, CHARACTER_MAXIMUM_LENGTH 
								   FROM metadatatest_predictedkeys
								   WHERE TABLE_SCHEMA=@schemanameS AND TABLE_NAME=@tablenameS Group by TABLE_NAME, COLUMN_NAME, DATA_TYPE, CHARACTER_MAXIMUM_LENGTH ) columnNames
								   Where RowNum = @Counter2S)

				--Handling certain types of data for the future insert and creatiing table altering inserts
				
				IF @lengthS > 0 AND @columnnameS = 'Database Version'
					SET @insert1S = 'DatabaseVersion '+@datatypeS+'('+@lengthS+') NULL'
				ELSE IF @lengthS > 0 AND @columnnameS IN ('Group', 'Schema')
					SET @insert1S = @columnnameS+'Alternative '+@datatypeS+'('+@lengthS+') NULL'
				ELSE IF @lengthS > 0 
					SET @insert1S = @columnnameS+' '+@datatypeS+'('+@lengthS+') NULL'
				ELSE IF @datatypeS = 'geography'
					BEGIN
						SET @datatypeS = 'nvarchar'
						SET @insert1S = @columnnameS+' '+@datatypeS+'(MAX) NULL'
					END
				ELSE IF @datatypeS = 'varbinary'
					BEGIN
						SET @datatypeS = 'nvarchar'
						SET @insert1S = @columnnameS+' '+@datatypeS+'(MAX) NULL'
					END
				ELSE IF @datatypeS = 'xml'
					BEGIN
						SET @datatypeS = 'nvarchar'
						SET @insert1S = @columnnameS+' '+@datatypeS+'(MAX) NULL'
					END
				ELSE
					SET @insert1S = @columnnameS+' '+@datatypeS+'(MAX) NULL'
			
				IF @columnnameS = 'Primary'
					SET @insert2S = 'PrimaryAlternative '+@datatypeS+' NULL'
				ELSE
					SET @insert2S = @columnnameS+' '+@datatypeS+' NULL'

				IF @datatypeS IN ('nvarchar','varchar','nchar','char','varbinary')
					EXEC ('ALTER TABLE [edw].[S_'+@tablenameS+'] ADD '+@insert1S+'')
				ELSE
					EXEC ('ALTER TABLE [edw].[S_'+@tablenameS+'] ADD '+@insert2S+'')

				SET @Counter2S  = @Counter2S+ 1
			END

			-- Inserting data into satellites

			EXEC('TRUNCATE TABLE edw.S_'+@tablenameS)

			DECLARE @columnsetS nvarchar(MAX)
			SET @columnsetS =(
				SELECT STRING_AGG(COLUMN_NAME, ', ')
					FROM
					(SELECT COUNT(COLUMN_NAME) AS CountCol, TABLE_NAME, COLUMN_NAME
					FROM metadatatest_predictedkeys
					WHERE TABLE_NAME=@tablenameS AND COLUMN_NAME NOT IN ('Database Version', 'Group', 'Schema', 'Primary', 'OrganizationLevel', 'DocumentLevel') Group by TABLE_NAME, COLUMN_NAME
					UNION
					SELECT COUNT(COLUMN_NAME) AS CountCol, TABLE_NAME, 'DatabaseVersion' AS COLUMN_NAME
					FROM metadatatest_predictedkeys
					WHERE TABLE_NAME=@tablenameS AND COLUMN_NAME IN ('Database Version') Group by TABLE_NAME, COLUMN_NAME
					UNION
					SELECT COUNT(COLUMN_NAME) AS CountCol, TABLE_NAME, CONCAT(COLUMN_NAME, 'Alternative') AS COLUMN_NAME
					FROM metadatatest_predictedkeys
					WHERE TABLE_NAME=@tablenameS AND COLUMN_NAME IN ('Group', 'Schema', 'Primary') Group by TABLE_NAME, COLUMN_NAME) columnNames)


			-- hashkey and checksum uses the same logic and MD5-algorithm over here. However checksum will be calculating the row level changes from now
			-- while hashkey calculates businesskey level changes, both excluding loadtime

			DECLARE @hashkeyS nvarchar(MAX)
			SET @hashkeyS =(
				SELECT STRING_AGG(COLUMN_NAME, ', ''|'', ')
					FROM
					(SELECT COUNT(COLUMN_NAME) AS CountCol, TABLE_NAME, COLUMN_NAME
					FROM metadatatest_predictedkeys
					WHERE TABLE_NAME=@tablenameS AND PredictedBusinesskeys=1 AND COLUMN_NAME NOT IN ('Database Version', 'Group', 'Schema', 'Primary', 'OrganizationLevel', 'DocumentLevel') Group by TABLE_NAME, COLUMN_NAME
					UNION
					SELECT COUNT(COLUMN_NAME) AS CountCol, TABLE_NAME, 'DatabaseVersion' AS COLUMN_NAME
					FROM metadatatest_predictedkeys
					WHERE TABLE_NAME=@tablenameS AND PredictedBusinesskeys=1 AND COLUMN_NAME IN ('Database Version') Group by TABLE_NAME, COLUMN_NAME
					UNION
					SELECT COUNT(COLUMN_NAME) AS CountCol, TABLE_NAME, CONCAT(COLUMN_NAME, 'Alternative') AS COLUMN_NAME
					FROM metadatatest_predictedkeys
					WHERE TABLE_NAME=@tablenameS AND PredictedBusinesskeys=1 AND COLUMN_NAME IN ('Group', 'Schema', 'Primary') Group by TABLE_NAME, COLUMN_NAME) columnNames)
			


			DECLARE @checksumS nvarchar(MAX)
			SET @checksumS =(
				SELECT STRING_AGG(COLUMN_NAME, ', ''|'', ')
					FROM
					(SELECT COUNT(COLUMN_NAME) AS CountCol, TABLE_NAME, COLUMN_NAME
					FROM metadatatest_predictedkeys
					WHERE TABLE_NAME=@tablenameS AND COLUMN_NAME NOT IN ('Database Version', 'Group', 'Schema', 'Primary', 'OrganizationLevel', 'DocumentLevel') Group by TABLE_NAME, COLUMN_NAME
					UNION
					SELECT COUNT(COLUMN_NAME) AS CountCol, TABLE_NAME, 'DatabaseVersion' AS COLUMN_NAME
					FROM metadatatest_predictedkeys
					WHERE TABLE_NAME=@tablenameS AND COLUMN_NAME IN ('Database Version') Group by TABLE_NAME, COLUMN_NAME
					UNION
					SELECT COUNT(COLUMN_NAME) AS CountCol, TABLE_NAME, CONCAT(COLUMN_NAME, 'Alternative') AS COLUMN_NAME
					FROM metadatatest_predictedkeys
					WHERE TABLE_NAME=@tablenameS AND COLUMN_NAME IN ('Group', 'Schema', 'Primary') Group by TABLE_NAME, COLUMN_NAME) columnNames)

			--Creating insert-query and handling customized tables and columns

			DECLARE @queryS nvarchar(MAX)

			IF @tablenameS='ProductDocument'

				SET @queryS = '
				DECLARE @hierarchytableproddocS TABLE(
					[ProductID] int NOT NULL,
					[DocumentNode] nvarchar (892) NOT NULL,
					[ModifiedDate] datetime NOT NULL
				);

				INSERT INTO @hierarchytableproddocS ([ProductID],[DocumentNode],[ModifiedDate])
				SELECT [ProductID], CONVERT(nvarchar(892), DocumentNode) AS DocumentNode, [ModifiedDate]
				FROM Production.ProductDocument
				
				INSERT INTO edw.S_'+@tablenameS+' (HASHKEY, CHECKSUM, SOURCE, LOADTIME, '+@columnsetS+')
				SELECT dbo.GetHashkey(CONCAT('+@hashkeyS+', ''|'', TRIM(''AdventureWorks2017'') )), dbo.GetHashkey(CONCAT('+@checksumS+', ''|'', TRIM(''AdventureWorks2017'') )), ''AdventureWorks2017'', GETDATE(), '+@columnsetS+'
				from @hierarchytableproddocS'

			ELSE IF @tablenameS='Document'
				SET @queryS = '
				DECLARE @hierarchytabledocS TABLE(
						[DocumentNode] nvarchar (892) NOT NULL,
						[Title] nvarchar(50) NOT NULL,
						[Owner] int NOT NULL,
						[FolderFlag] bit NOT NULL,
						[FileName] nvarchar(400) NOT NULL,
						[FileExtension] nvarchar(8) NOT NULL,
						[Revision] nchar(5) NOT NULL,
						[ChangeNumber] int NOT NULL,
						[Status] tinyint NOT NULL,
						[DocumentSummary] nvarchar(max) NULL,
						[Document] varbinary(max) NULL,
						[rowguid] uniqueidentifier ROWGUIDCOL  NOT NULL,
						[ModifiedDate] datetime NOT NULL
				);

				INSERT INTO @hierarchytabledocS([DocumentNode],[Title],[Owner],[FolderFlag],[FileName],[FileExtension],[Revision],[ChangeNumber],[Status],
						[DocumentSummary],[Document],[rowguid],[ModifiedDate])
				SELECT CONVERT(nvarchar(892), [DocumentNode]) AS [DocumentNode],[Title],[Owner],[FolderFlag],[FileName],[FileExtension],[Revision],[ChangeNumber],[Status],
						[DocumentSummary],[Document],[rowguid],[ModifiedDate]
				FROM Production.Document
				
				INSERT INTO edw.S_'+@tablenameS+' (HASHKEY, CHECKSUM, SOURCE, LOADTIME, '+@columnsetS+')
				SELECT dbo.GetHashkey(CONCAT('+@hashkeyS+', ''|'', TRIM(''AdventureWorks2017'') )), dbo.GetHashkey(CONCAT('+@checksumS+', ''|'', TRIM(''AdventureWorks2017'') )), ''AdventureWorks2017'', GETDATE(), '+@columnsetS+'
				from @hierarchytabledocS'

			ELSE IF @tablenameS='Employee'
				SET @queryS = '
				DECLARE @hierarchytableempS TABLE(
					[BusinessEntityID] int NOT NULL,
					[NationalIDNumber] nvarchar(15) NOT NULL,
					[LoginID] nvarchar(256) NOT NULL,
					[OrganizationNode] nvarchar(892) NULL,
					[JobTitle] nvarchar(50) NOT NULL,
					[BirthDate] date NOT NULL,
					[MaritalStatus] nchar(1) NOT NULL,
					[Gender] nchar(1) NOT NULL,
					[HireDate] date NOT NULL,
					[SalariedFlag] dbo.Flag NOT NULL,
					[VacationHours] smallint NOT NULL,
					[SickLeaveHours] smallint NOT NULL,
					[CurrentFlag] dbo.Flag NOT NULL,
					[rowguid] uniqueidentifier ROWGUIDCOL  NOT NULL,
					[ModifiedDate] datetime NOT NULL
				);

				INSERT INTO @hierarchytableempS ([BusinessEntityID],[NationalIDNumber],[LoginID],[OrganizationNode],[JobTitle],[BirthDate],[MaritalStatus],[Gender],
				[HireDate],[SalariedFlag],[VacationHours],[SickLeaveHours],[CurrentFlag],[rowguid],[ModifiedDate])
				SELECT [BusinessEntityID],[NationalIDNumber],[LoginID],CONVERT(nvarchar(892), [OrganizationNode]) AS [OrganizationNode],[JobTitle],[BirthDate],[MaritalStatus],[Gender],
				[HireDate],[SalariedFlag],[VacationHours],[SickLeaveHours],[CurrentFlag],[rowguid],[ModifiedDate]
				FROM HumanResources.Employee
				
				INSERT INTO edw.S_'+@tablenameS+' (HASHKEY, CHECKSUM, SOURCE, LOADTIME, '+@columnsetS+')
				SELECT dbo.GetHashkey(CONCAT('+@hashkeyS+', ''|'', TRIM(''AdventureWorks2017'') )), dbo.GetHashkey(CONCAT('+@checksumS+', ''|'', TRIM(''AdventureWorks2017'') )), ''AdventureWorks2017'', GETDATE(), '+@columnsetS+'
				from @hierarchytableempS'
			ELSE IF @tablenameS='AWBuildVersion'
				SET @queryS = '
				DECLARE @changenamesAWBS TABLE(
						[SystemInformationID] tinyint NOT NULL,
						[DatabaseVersion] nvarchar(25) NOT NULL,
						[VersionDate] datetime NOT NULL,
						[ModifiedDate] datetime NOT NULL
				);

				INSERT INTO @changenamesAWBS([SystemInformationID],[DatabaseVersion],[VersionDate],[ModifiedDate])
				SELECT [SystemInformationID],[Database Version],[VersionDate],[ModifiedDate]
				FROM dbo.AWBuildVersion
				
				INSERT INTO edw.S_'+@tablenameS+' (HASHKEY, CHECKSUM, SOURCE, LOADTIME, '+@columnsetS+')
				SELECT dbo.GetHashkey(CONCAT('+@hashkeyS+', ''|'', TRIM(''AdventureWorks2017'') )), dbo.GetHashkey(CONCAT('+@checksumS+', ''|'', TRIM(''AdventureWorks2017'') )), ''AdventureWorks2017'', GETDATE(), '+@columnsetS+'
				from @changenamesAWBS'
			ELSE IF @tablenameS='DatabaseLog'
				SET @queryS = '
				DECLARE @changenamesDBL TABLE(
						[DatabaseLogID] int NOT NULL,
						[PostTime] datetime NOT NULL,
						[DatabaseUser] sysname NOT NULL,
						[Event] sysname NOT NULL,
						[SchemaAlternative] sysname NULL,
						[Object] sysname NULL,
						[TSQL] nvarchar(max) NOT NULL,
						[XmlEvent] nvarchar(max) NOT NULL
				);

				INSERT INTO @changenamesDBL([DatabaseLogID],[PostTime],[DatabaseUser],[Event],[SchemaAlternative],[Object],[TSQL],[XmlEvent])
				SELECT [DatabaseLogID],[PostTime],[DatabaseUser],[Event],[Schema],[Object],[TSQL],CONVERT(nvarchar(max),[XmlEvent]) As [XmlEvent]
				FROM dbo.DatabaseLog
				
				INSERT INTO edw.S_'+@tablenameS+' (HASHKEY, CHECKSUM, SOURCE, LOADTIME, '+@columnsetS+')
				SELECT dbo.GetHashkey(CONCAT('+@hashkeyS+', ''|'', TRIM(''AdventureWorks2017'') )), dbo.GetHashkey(CONCAT('+@checksumS+', ''|'', TRIM(''AdventureWorks2017'') )), ''AdventureWorks2017'', GETDATE(), '+@columnsetS+'
				from @changenamesDBL'
			ELSE IF @tablenameS='ProductProductPhoto'
				SET @queryS = '
				DECLARE @changenamesPPP TABLE(
						[ProductID] int NOT NULL,
						[ProductPhotoID] int NOT NULL,
						[PrimaryAlternative] dbo.Flag NOT NULL,
						[ModifiedDate] datetime NOT NULL
				);

				INSERT INTO @changenamesPPP([ProductID],[ProductPhotoID],[PrimaryAlternative],[ModifiedDate])
				SELECT [ProductID],[ProductPhotoID],[Primary],[ModifiedDate]
				FROM Production.ProductProductPhoto
				
				INSERT INTO edw.S_'+@tablenameS+' (HASHKEY, CHECKSUM, SOURCE, LOADTIME, '+@columnsetS+')
				SELECT dbo.GetHashkey(CONCAT('+@hashkeyS+', ''|'', TRIM(''AdventureWorks2017'') )), dbo.GetHashkey(CONCAT('+@checksumS+', ''|'', TRIM(''AdventureWorks2017'') )), ''AdventureWorks2017'', GETDATE(), '+@columnsetS+'
				from @changenamesPPP'
			ELSE IF @tablenameS='SalesTerritory'
				SET @queryS = '
				DECLARE @changenamesST TABLE(
						[TerritoryID] int NOT NULL,
						[Name] dbo.Name NOT NULL,
						[CountryRegionCode] nvarchar(3) NOT NULL,
						[GroupAlternative] nvarchar(50) NOT NULL,
						[SalesYTD] money NOT NULL,
						[SalesLastYear] money NOT NULL,
						[CostYTD] money NOT NULL,
						[CostLastYear] money NOT NULL,
						[rowguid] uniqueidentifier ROWGUIDCOL  NOT NULL,
						[ModifiedDate] datetime NOT NULL
				);

				INSERT INTO @changenamesST([TerritoryID],[Name],[CountryRegionCode],[GroupAlternative],[SalesYTD],[SalesLastYear],[CostYTD],[CostLastYear],[rowguid],[ModifiedDate])
				SELECT [TerritoryID],[Name],[CountryRegionCode],[Group],[SalesYTD],[SalesLastYear],[CostYTD],[CostLastYear],[rowguid],[ModifiedDate]
				FROM Sales.SalesTerritory
				
				INSERT INTO edw.S_'+@tablenameS+' (HASHKEY, CHECKSUM, SOURCE, LOADTIME, '+@columnsetS+')
				SELECT dbo.GetHashkey(CONCAT('+@hashkeyS+', ''|'', TRIM(''AdventureWorks2017'') )), dbo.GetHashkey(CONCAT('+@checksumS+', ''|'', TRIM(''AdventureWorks2017'') )), ''AdventureWorks2017'', GETDATE(), '+@columnsetS+'
				from @changenamesST'
			ELSE IF @tablenameS='Address'
				SET @queryS = '
				DECLARE @geographyADDS TABLE(
						[AddressID] int NOT NULL,
						[AddressLine1] nvarchar(60) NOT NULL,
						[AddressLine2] nvarchar(60) NULL,
						[City] nvarchar(30) NOT NULL,
						[StateProvinceID] int NOT NULL,
						[PostalCode] nvarchar(15) NOT NULL,
						[SpatialLocation] nvarchar(MAX) NULL,
						[rowguid] uniqueidentifier ROWGUIDCOL  NOT NULL,
						[ModifiedDate] datetime NOT NULL
				);

				INSERT INTO @geographyADDS([AddressID],[AddressLine1],[AddressLine2],[City],[StateProvinceID],[PostalCode],[SpatialLocation],[rowguid],[ModifiedDate])
				SELECT [AddressID],[AddressLine1],[AddressLine2],[City],[StateProvinceID],[PostalCode],CONVERT(nvarchar(MAX), [SpatialLocation]) AS [SpatialLocation],[rowguid],[ModifiedDate]
				FROM Person.Address
				
				INSERT INTO edw.S_'+@tablenameS+' (HASHKEY, CHECKSUM, SOURCE, LOADTIME, '+@columnsetS+')
				SELECT dbo.GetHashkey(CONCAT('+@hashkeyS+', ''|'', TRIM(''AdventureWorks2017'') )), dbo.GetHashkey(CONCAT('+@checksumS+', ''|'', TRIM(''AdventureWorks2017'') )), ''AdventureWorks2017'', GETDATE(), '+@columnsetS+'
				from @geographyADDS'
			ELSE IF @tablenameS='JobCandidate'
				SET @queryS = '
				DECLARE @xmlconvertJC TABLE(
						[JobCandidateID] int NOT NULL,
						[BusinessEntityID] int NULL,
						[Resume] nvarchar(max) NULL,
						[ModifiedDate] datetime NOT NULL
				);

				INSERT INTO @xmlconvertJC([JobCandidateID],[BusinessEntityID],[Resume],[ModifiedDate])
				SELECT [JobCandidateID],[BusinessEntityID],CONVERT(nvarchar(max),[Resume]) AS [Resume],[ModifiedDate]
				FROM HumanResources.JobCandidate
				
				INSERT INTO edw.S_'+@tablenameS+' (HASHKEY, CHECKSUM, SOURCE, LOADTIME, '+@columnsetS+')
				SELECT dbo.GetHashkey(CONCAT('+@hashkeyS+', ''|'', TRIM(''AdventureWorks2017'') )), dbo.GetHashkey(CONCAT('+@checksumS+', ''|'', TRIM(''AdventureWorks2017'') )), ''AdventureWorks2017'', GETDATE(), '+@columnsetS+'
				from @xmlconvertJC'
			ELSE IF @tablenameS='Person'
				SET @queryS = '
				DECLARE @xmlconvertPerson TABLE(
						[BusinessEntityID] int NOT NULL,
						[PersonType] nchar(2) NOT NULL,
						[NameStyle] dbo.NameStyle NOT NULL,
						[Title] nvarchar(8) NULL,
						[FirstName] dbo.Name NOT NULL,
						[MiddleName] dbo.Name NULL,
						[LastName] dbo.Name NOT NULL,
						[Suffix] nvarchar(10) NULL,
						[EmailPromotion] int NOT NULL,
						[AdditionalContactInfo] nvarchar(max) NULL,
						[Demographics] nvarchar(max) NULL,
						[rowguid] uniqueidentifier ROWGUIDCOL  NOT NULL,
						[ModifiedDate] datetime NOT NULL
				);

				INSERT INTO @xmlconvertPerson([BusinessEntityID],[PersonType],[NameStyle],[Title],[FirstName],[MiddleName],[LastName],[Suffix],[EmailPromotion],
											[AdditionalContactInfo],[Demographics],[rowguid],[ModifiedDate])
				SELECT [BusinessEntityID],[PersonType],[NameStyle],[Title],[FirstName],[MiddleName],[LastName],[Suffix],[EmailPromotion],
						CONVERT(nvarchar(max),[AdditionalContactInfo]) AS [AdditionalContactInfo],CONVERT(nvarchar(max),[Demographics]) AS [Demographics],[rowguid],[ModifiedDate]
				FROM Person.Person
				
				INSERT INTO edw.S_'+@tablenameS+' (HASHKEY, CHECKSUM, SOURCE, LOADTIME, '+@columnsetS+')
				SELECT dbo.GetHashkey(CONCAT('+@hashkeyS+', ''|'', TRIM(''AdventureWorks2017'') )), dbo.GetHashkey(CONCAT('+@checksumS+', ''|'', TRIM(''AdventureWorks2017'') )), ''AdventureWorks2017'', GETDATE(), '+@columnsetS+'
				from @xmlconvertPerson'
			ELSE IF @tablenameS='Illustration'
				SET @queryS = '
				DECLARE @xmlconvertIllustration TABLE(
						[IllustrationID] int NOT NULL,
						[Diagram] nvarchar(max) NULL,
						[ModifiedDate] datetime NOT NULL
				);

				INSERT INTO @xmlconvertIllustration([IllustrationID],[Diagram],[ModifiedDate])
				SELECT [IllustrationID],CONVERT(nvarchar(max),[Diagram]) AS [Diagram],[ModifiedDate]
				FROM Production.Illustration
				
				INSERT INTO edw.S_'+@tablenameS+' (HASHKEY, CHECKSUM, SOURCE, LOADTIME, '+@columnsetS+')
				SELECT dbo.GetHashkey(CONCAT('+@hashkeyS+', ''|'', TRIM(''AdventureWorks2017'') )), dbo.GetHashkey(CONCAT('+@checksumS+', ''|'', TRIM(''AdventureWorks2017'') )), ''AdventureWorks2017'', GETDATE(), '+@columnsetS+'
				from @xmlconvertIllustration'
			ELSE IF @tablenameS='ProductModel'
				SET @queryS = '
				DECLARE @xmlconvertPM TABLE(
						[ProductModelID] int NOT NULL,
						[Name] dbo.Name NOT NULL,
						[CatalogDescription] nvarchar(max) NULL,
						[Instructions] nvarchar(max) NULL,
						[rowguid] uniqueidentifier ROWGUIDCOL  NOT NULL,
						[ModifiedDate] datetime NOT NULL
				);

				INSERT INTO @xmlconvertPM([ProductModelID],[Name],[CatalogDescription],[Instructions],[rowguid],[ModifiedDate])
				SELECT [ProductModelID],[Name],CONVERT(nvarchar(max),[CatalogDescription]) AS [CatalogDescription],CONVERT(nvarchar(max),[Instructions]) AS [Instructions],[rowguid],[ModifiedDate]
				FROM Production.ProductModel
				
				INSERT INTO edw.S_'+@tablenameS+' (HASHKEY, CHECKSUM, SOURCE, LOADTIME, '+@columnsetS+')
				SELECT dbo.GetHashkey(CONCAT('+@hashkeyS+', ''|'', TRIM(''AdventureWorks2017'') )), dbo.GetHashkey(CONCAT('+@checksumS+', ''|'', TRIM(''AdventureWorks2017'') )), ''AdventureWorks2017'', GETDATE(), '+@columnsetS+'
				from @xmlconvertPM'
			ELSE IF @tablenameS='Store'
				SET @queryS = '
				DECLARE @xmlconvertStore TABLE(
						[BusinessEntityID] int NOT NULL,
						[Name] dbo.Name NOT NULL,
						[SalesPersonID] int NULL,
						[Demographics] nvarchar(max) NULL,
						[rowguid] uniqueidentifier ROWGUIDCOL  NOT NULL,
						[ModifiedDate] datetime NOT NULL
				);

				INSERT INTO @xmlconvertStore([BusinessEntityID],[Name],[SalesPersonID],[Demographics],[rowguid],[ModifiedDate])
				SELECT [BusinessEntityID],[Name],[SalesPersonID],CONVERT(nvarchar(max),[Demographics]) AS [Demographics],[rowguid],[ModifiedDate]
				FROM Sales.Store
				
				INSERT INTO edw.S_'+@tablenameS+' (HASHKEY, CHECKSUM, SOURCE, LOADTIME, '+@columnsetS+')
				SELECT dbo.GetHashkey(CONCAT('+@hashkeyS+', ''|'', TRIM(''AdventureWorks2017'') )), dbo.GetHashkey(CONCAT('+@checksumS+', ''|'', TRIM(''AdventureWorks2017'') )), ''AdventureWorks2017'', GETDATE(), '+@columnsetS+'
				from @xmlconvertStore'
			ELSE
				SET @queryS = 'INSERT INTO edw.S_'+@tablenameS+' (HASHKEY, CHECKSUM, SOURCE, LOADTIME, '+@columnsetS+')
				SELECT dbo.GetHashkey(CONCAT('+@hashkeyS+', ''|'', TRIM(''AdventureWorks2017'') )), dbo.GetHashkey(CONCAT('+@checksumS+', ''|'', TRIM(''AdventureWorks2017'') )), ''AdventureWorks2017'', GETDATE(), '+@columnsetS+'
				from '+@schemanameS+'.'+@tablenameS+''

			EXEC(@queryS)

			SET @CounterS  = @CounterS+ 1
			SET @Counter2S  = 1
		END

		SET @Counter0S = @Counter0S + 1
		SET @CounterS  = 1

	END



