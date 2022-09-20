
Select
	cast([AlertEmailAuditListingPK] as int) [AlertEmailAuditListingPK],
	cast([AlertEmailAuditFK] as int) [AlertEmailAuditFK],
	cast([ListingID] as int) [ListingId] 
From stg.[CC_AlertEmailAuditListing_FinalView]