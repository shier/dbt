{{ config(materialized='table',schema='dbo')}}
Select
	cast([AlertEmailAuditListingPK] as int) [AlertEmailAuditListingPK],
	cast([AlertEmailAuditFK] as int) [AlertEmailAuditFK],
	cast([ListingID] as int) [ListingID] 
From stg.[CC_AlertEmailAuditListing_FinalView]