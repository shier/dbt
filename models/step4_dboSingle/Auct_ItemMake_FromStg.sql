{{ config(materialized='table',schema='dbo')}}
Select
	cast([ItemMakeID] as int) [ItemMakeID],
	cast([Name] as nvarchar(4000)) [Name],
	cast([ItemTaxTypeID] as int) [ItemTaxTypeID] 
From stg.[Auct_ItemMake_FinalView]