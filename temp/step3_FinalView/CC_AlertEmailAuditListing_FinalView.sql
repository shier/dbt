{{ config(materialized='view',schema='stg')}}
Select
	[AlertEmailAuditListingPK],[AlertEmailAuditFK],[ListingID] 
From stg.[CC_AlertEmailAuditListing_Incr] 
Where [dbt_valid_to] is null