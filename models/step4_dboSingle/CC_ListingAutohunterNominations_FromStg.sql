{{ config(materialized='table',schema='dbo')}}
Select
	cast([ID] as int) [ID],
	cast([NominationDateUTC] as datetime) [NominationDateUTC],
	cast([ListingID] as int) [ListingID],
	cast([CompanyID] as int) [CompanyID],
	cast([Nominationaccepted] as bit) [Nominationaccepted],
	cast([NominationSalesForceProcessed] as bit) [NominationSalesForceProcessed] 
From stg.[CC_ListingAutohunterNominations_FinalView]