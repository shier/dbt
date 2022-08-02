create view "stg"."CC_AlertEmailAuditListing_FinalView__dbt_tmp" as
    
Select
	[AlertEmailAuditListingPK],[AlertEmailAuditFK],[ListingID] 
From stg.[CC_AlertEmailAuditListing_Incr] 
Where [dbt_valid_to] is null
