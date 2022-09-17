{{ config(materialized='table',schema='dbo')}}
Select
	cast([ItemTaxTypeID] as int) [ITEMTAXTYPEID],
	cast([Name] as nvarchar(4000)) [NAME] 
From stg.[Auct_ItemTaxType_FinalView]