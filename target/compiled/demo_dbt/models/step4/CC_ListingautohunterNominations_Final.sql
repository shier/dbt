
Select
	[ID],[NominationDateUTC],[ListingID],[CompanyID],[Nominationaccepted],[NominationSalesForceProcessed] 
From stg.[CC_ListingautohunterNominations_Incr] 
Where [dbt_valid_to] is null