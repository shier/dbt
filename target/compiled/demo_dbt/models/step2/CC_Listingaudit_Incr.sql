
With hashData as (
		Select
			HASHBYTES('MD5', concat(Newvalue, UserName, DdlAction, FieldName, Oldvalue, Cast(ListingFK as varchar), Cast(AuditDateTimeUTC as varchar))) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[CC_Listingaudit_Inter]
	)
Select * From hashData
