{{ config(materialized='view',schema='stg')}}
Select
	[ID],[NominationDateUTC],[ListingID],[CompanyID],[Nominationaccepted],[NominationSalesForceProcessed] 
From stg.[CC_ListingAutohunterNominations_Incr] 
Where [dbt_valid_to] is null