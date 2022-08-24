{{ config(materialized='view',schema='stg')}}
Select
	[SITECATEGORYID] [SiteCategoryID],
	cast([NAME] as nvarchar(4000)) [Name],
	[FEECATEGORYID] [FeeCategoryID]
From stg.[Auct_SiteCategory_Raw]
