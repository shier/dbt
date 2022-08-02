
Select
	[SiteTypeID],[Name],[ActiveImageURL],[InActiveImageURL],[ReservedImageURL],[SiteCategoryID],[CanHaveChildren] 
From stg.[Auct_SiteType_Incr] 
Where [dbt_valid_to] is null