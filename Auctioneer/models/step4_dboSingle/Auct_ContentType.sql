{{ config(materialized='table',schema='dbo')}}
Select
	cast([ContentTypeID] as int) [CONTENTTYPEID],
	cast([Name] as nvarchar(4000)) [NAME],
	cast([Active] as int) [ACTIVE] 
From stg.[Auct_ContentType_FinalView]