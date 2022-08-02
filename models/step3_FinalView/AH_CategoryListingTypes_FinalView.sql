{{ config(materialized='view',schema='stg')}}
Select
	[ID],[CategoryID],[ListingTypeID],[CreatedOn],[UpdatedOn],[DeletedOn],[LastUpdatedUser] 
From stg.[AH_CategoryListingTypes_Incr] 
Where [dbt_valid_to] is null