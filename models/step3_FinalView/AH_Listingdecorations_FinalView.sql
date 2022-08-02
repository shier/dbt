{{ config(materialized='view',schema='stg')}}
Select
	[ID],[CreatedOn],[UpdatedOn],[DeletedOn],[DecorationID],[ListingID] 
From stg.[AH_Listingdecorations_Incr] 
Where [dbt_valid_to] is null