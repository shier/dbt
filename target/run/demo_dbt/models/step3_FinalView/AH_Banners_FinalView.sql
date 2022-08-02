create view "stg"."AH_Banners_FinalView__dbt_tmp" as
    
Select
	[ID],[CreatedOn],[UpdatedOn],[DeletedOn],[MediaID],[LinkURI],[BannerLocation] 
From stg.[AH_Banners_Incr] 
Where [dbt_valid_to] is null
