create view "stg"."Auct_MultiMediaCategory_InterView__dbt_tmp" as
    
Select
	[MULTIMEDIACATEGORYID] [MultiMediaCategoryID],
	cast([NAME] as nvarchar(4000)) [Name],
	[ACTIVE] [Active]
From stg.[Auct_MultiMediaCategory_Raw]
