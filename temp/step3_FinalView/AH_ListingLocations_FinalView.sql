{{ config(materialized='view',schema='stg')}}
Select
	[ID],[LocationID],[ListingID],[CreatedOn],[UpdatedOn],[DeletedOn] 
From stg.[AH_ListingLocations_Incr] 
Where [dbt_valid_to] is null