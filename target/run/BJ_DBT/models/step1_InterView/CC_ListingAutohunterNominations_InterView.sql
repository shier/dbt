create view "stg"."CC_ListingAutohunterNominations_InterView__dbt_tmp" as
    
Select
	[Id] [ID],
	[NominationDateUTC] [NominationDateUTC],
	[ListingId] [ListingID],
	[CompanyId] [CompanyID],
	[NominationAccepted] [Nominationaccepted],
	[NominationSalesforceProcessed] [NominationSalesForceProcessed]
From stg.[CC_ListingAutohunterNominations_Raw]
