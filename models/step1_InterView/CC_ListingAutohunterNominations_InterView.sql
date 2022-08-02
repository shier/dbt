{{ config(materialized='view',schema='stg')}}
Select
	[Id] [ID],
	[NominationDateUTC] [NominationDateUTC],
	[ListingId] [ListingID],
	[CompanyId] [CompanyID],
	[NominationAccepted] [Nominationaccepted],
	[NominationSalesforceProcessed] [NominationSalesForceProcessed]
From stg.[CC_ListingAutohunterNominations_Raw]
