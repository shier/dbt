{{ config(materialized='table',schema='dbo')}}
Select
	cast([SiteCategoryID] as int) [SiteCategoryID],
	cast([Name] as nvarchar(4000)) [Name],
	cast([FeeCategoryID] as int) [FeeCategoryID] 
From stg.[Auct_SiteCategory_FinalView]