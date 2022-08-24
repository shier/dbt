create view "dbo_stg"."Auct_SiteCategory_InterView__dbt_tmp" as
    
Select
	[SITECATEGORYID] [SiteCategoryID],
	cast([NAME] as nvarchar(4000)) [Name],
	[FEECATEGORYID] [FeeCategoryID]
From stg.[Auct_SiteCategory_Raw]
