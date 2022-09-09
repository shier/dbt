{{ config(materialized='view',schema='stg')}}
Select
	[AlertEmailAuditListingPK] [AlertEmailAuditListingPK],
	[AlertEmailAuditFK] [AlertEmailAuditFK],
	[ListingId] [ListingID]
From stg.[CC_AlertEmailAuditListing_Raw]
