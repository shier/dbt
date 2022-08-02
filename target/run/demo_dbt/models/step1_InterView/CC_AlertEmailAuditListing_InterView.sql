create view "stg"."CC_AlertEmailAuditListing_InterView__dbt_tmp" as
    
Select
	[AlertEmailAuditListingPK] [AlertEmailAuditListingPK],
	[AlertEmailAuditFK] [AlertEmailAuditFK],
	[ListingId] [ListingID]
From stg.[CC_AlertEmailAuditListing_Raw]
