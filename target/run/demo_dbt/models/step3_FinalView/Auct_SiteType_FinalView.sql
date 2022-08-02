create view "stg"."Auct_SiteType_FinalView__dbt_tmp" as
    
Select
	[SiteTypeID],[Name],[ActiveImageURL],[InActiveImageURL],[SiteCategoryID],[CanHaveChildren],[ReservedImageURL] 
From stg.[Auct_SiteType_Incr] 
Where [dbt_valid_to] is null
