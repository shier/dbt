{{ config(materialized='view',schema='stg')}}
Select
	[ID],[PayToproceed],[CreatedOn],[UpdatedOn],[DeletedOn],[EventID],[ListingTypeID],[Description],[LastUpdatedUser],[Name] 
From stg.[AH_Feeschedules_Incr] 
Where [dbt_valid_to] is null