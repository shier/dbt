create view "stg"."CC_ListingAutohunterNominations_FinalView__dbt_tmp" as
    
Select
	[ID],[NominationDateUTC],[ListingID],[CompanyID],[Nominationaccepted],[NominationSalesForceProcessed] 
From stg.[CC_ListingAutohunterNominations_Incr] 
Where [dbt_valid_to] is null
