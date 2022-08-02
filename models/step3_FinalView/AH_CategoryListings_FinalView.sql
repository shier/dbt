{{ config(materialized='view',schema='stg')}}
Select
	[ID],[DeletedOn],[CreatedOn],[UpdatedOn],[ListingID],[CategoryID] 
From stg.[AH_CategoryListings_Incr] 
Where [dbt_valid_to] is null