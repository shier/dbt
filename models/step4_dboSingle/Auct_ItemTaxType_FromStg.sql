{{ config(materialized='table',schema='dbo')}}
Select
	cast([ItemTaxTypeID] as int) [ItemTaxTypeID],
	cast([Name] as nvarchar(4000)) [Name] 
From stg.[Auct_ItemTaxType_FinalView]