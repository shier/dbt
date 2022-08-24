create view "dbo_stg"."Auct_GlCategory_InterView__dbt_tmp" as
    
Select
	[GLCATEGORYID] [GlCategoryID],
	cast([NAME] as nvarchar(4000)) [Name],
	[CREATED] [Created]
From stg.[Auct_GlCategory_Raw]
