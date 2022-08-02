create view "stg"."Auct_SiteCategory_FinalView__dbt_tmp" as
    
Select
	[SiteCategoryID],[Name],[FeeCategoryID] 
From stg.[Auct_SiteCategory_Incr] 
Where [dbt_valid_to] is null
