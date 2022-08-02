{{ config(materialized='view',schema='stg')}}
Select
	[ID],[Enabled],[ListingTypeID],[CreatedOn],[UpdatedOn],[DeletedOn],[MediaassetName],[Scope] 
From stg.[AH_ListingTypeMedia_Incr] 
Where [dbt_valid_to] is null