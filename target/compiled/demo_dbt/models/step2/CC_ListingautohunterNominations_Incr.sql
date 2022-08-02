
With hashData as (
		Select
			HASHBYTES('MD5', concat(Cast(NominationDateUTC as varchar), Cast(ListingID as varchar), Cast(CompanyID as varchar), Cast(Nominationaccepted as varchar), Cast(NominationSalesForceProcessed as varchar))) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[CC_ListingautohunterNominations_Inter]
	)
Select * From hashData
