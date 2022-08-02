{{ config(materialized='view',schema='stg')}}
Select
	[ID],[Name],[Description],[LastUpdatedUser],[CreatedOn],[UpdatedOn],[DeletedOn],[Amount],[PayToproceed] 
From stg.[AH_Locations_Incr] 
Where [dbt_valid_to] is null