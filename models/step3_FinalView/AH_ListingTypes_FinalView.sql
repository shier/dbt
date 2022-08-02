{{ config(materialized='view',schema='stg')}}
Select
	[ID],[CreatedOn],[UpdatedOn],[DeletedOn],[Name],[LastUpdatedUser] 
From stg.[AH_ListingTypes_Incr] 
Where [dbt_valid_to] is null