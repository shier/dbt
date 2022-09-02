{{ config(materialized='view',schema='stg')}}
Select
	[ID],[ProvIDErName],[CreatedOn],[UpdatedOn],[DeletedOn],[ListingTypeID],[Enabled] 
From stg.[AH_ListingTypeFeeprovIDErs_Incr] 
Where [dbt_valid_to] is null