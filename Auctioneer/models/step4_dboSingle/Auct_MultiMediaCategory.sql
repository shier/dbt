{{ config(materialized='table',schema='dbo')}}
Select
	cast([MultiMediaCategoryID] as int) [MULTIMEDIACATEGORYID],
	cast([Name] as nvarchar(4000)) [NAME],
	cast([Active] as int) [ACTIVE] 
From stg.[Auct_MultiMediaCategory_FinalView]