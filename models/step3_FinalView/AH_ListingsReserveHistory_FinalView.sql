{{ config(materialized='view',schema='stg')}}
Select
	[ID],[ListingID],[CreatedOn],[UpdatedOn],[DeletedOn],[OldReserve],[NewReserve] 
From stg.[AH_ListingsReserveHistory_Incr] 
Where [dbt_valid_to] is null