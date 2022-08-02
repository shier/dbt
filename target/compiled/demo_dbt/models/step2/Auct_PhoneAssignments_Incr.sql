
With hashData as (
		Select
			HASHBYTES('MD5', concat(IsDefault, Cast(Created as varchar), Cast(UpdateEventID as varchar), Cast(CustomerAccountID as varchar), Cast(PhoneID as varchar), Cast(PhoneStatusID as varchar), Cast(PhoneTypeID as varchar))) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_PhoneAssignments_Inter]
	)
Select * From hashData
