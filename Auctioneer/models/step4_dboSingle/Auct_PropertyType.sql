{{ config(materialized='table',schema='dbo')}}
Select
	cast([PropertyTypeID] as int) [PROPERTYTYPEID],
	cast([Name] as nvarchar(4000)) [NAME],
	cast([Key] as int) [KEY],
	cast([Active] as int) [ACTIVE] 
From stg.[Auct_PropertyType_FinalView]