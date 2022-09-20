
Select
	cast([NominationDateUTC] as datetime) [NominationDateUTC],
	cast([ID] as int) [Id],
	cast([ListingID] as int) [ListingId],
	cast([CompanyID] as int) [CompanyId],
	cast([Nominationaccepted] as bit) [NominationAccepted],
	cast([NominationSalesForceProcessed] as bit) [NominationSalesforceProcessed] 
From stg.[CC_ListingAutohunterNominations_FinalView]