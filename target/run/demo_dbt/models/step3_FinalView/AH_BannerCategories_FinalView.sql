create view "stg"."AH_BannerCategories_FinalView__dbt_tmp" as
    
Select
	[ID],[CreatedOn],[UpdatedOn],[DeletedOn],[BannerID],[CategoryID] 
From stg.[AH_BannerCategories_Incr] 
Where [dbt_valid_to] is null
