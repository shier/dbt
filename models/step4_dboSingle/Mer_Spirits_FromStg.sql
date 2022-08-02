{{ config(materialized='table',schema='dbo')}}
Select
	cast([No_] as nvarchar(4000)) [No_],
	cast([No_2] as nvarchar(4000)) [No_2],
	cast([Description] as nvarchar(4000)) [Description],
	cast([Description_2] as nvarchar(4000)) [Description_2],
	cast([Base_Unit_Of_Measure] as nvarchar(4000)) [Base_Unit_Of_Measure],
	cast([Item_Category_Code] as nvarchar(4000)) [Item_Category_Code],
	cast([Unit_Price] as numeric(194)) [Unit_Price] 
From stg.[Mer_Spirits_FinalView]