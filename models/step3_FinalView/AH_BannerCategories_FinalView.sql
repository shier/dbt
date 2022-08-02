{{ config(materialized='view',schema='stg')}}
Select
	[ID],[CreatedOn],[UpdatedOn],[DeletedOn],[BannerID],[CategoryID] 
From stg.[AH_BannerCategories_Incr] 
Where [dbt_valid_to] is null