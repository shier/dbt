{{ config(materialized='table',schema='dbo')}}
Select
	cast([TimeStamp] as nvarchar(4000)) [TimeStamp],
	cast([Type] as nvarchar(4000)) [Type],
	cast([Inventory_Posting_Group] as nvarchar(4000)) [Inventory_Posting_Group],
	cast([Item_Category_Code] as nvarchar(4000)) [Item_Category_Code],
	cast([No_] as nvarchar(4000)) [No_],
	cast([Description] as nvarchar(4000)) [Description],
	cast([Search_Description] as nvarchar(4000)) [Search_Description],
	cast([Description_2] as nvarchar(4000)) [Description_2],
	cast([Base_Unit_Of_Measure] as nvarchar(4000)) [Base_Unit_Of_Measure],
	cast([Price_Unit_ConVersion] as nvarchar(4000)) [Price_Unit_ConVersion],
	cast([No__2] as float) [No__2] 
From stg.[Mer_FromItemTable_FinalView]