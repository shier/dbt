{{ config(materialized='table',schema='dbo')}}
Select
	cast([DocumentImageTypeID] as int) [DOCUMENTIMAGETYPEID],
	cast([Name] as nvarchar(4000)) [NAME],
	cast([Active] as bit) [ACTIVE] 
From stg.[Auct_DocumentImageType_FinalView]