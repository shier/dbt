{{ config(materialized='table',schema='dbo')}}
Select
	cast([SiteCategoryID] as int) [SITECATEGORYID],
	cast([Name] as nvarchar(4000)) [NAME],
	cast([FeeCategoryID] as int) [FEECATEGORYID] 
From stg.[Auct_SiteCategory_FinalView]