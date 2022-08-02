
With hashData as (
		Select
			HASHBYTES('MD5', concat(Cast(SqlDaTestamp as varchar), Cast(Enddttm as varchar), Cast(ListingID as varchar), Cast(SourceListingID as varchar), Origin)) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[AH_ListingEnddttmaudit_Inter]
	)
Select * From hashData
