
With hashData as (
		Select
			HASHBYTES('MD5', concat(Cast(Created as varchar), Cast(ContactID as varchar), Cast(UserContactTypeID as varchar), Cast(UsersID as varchar), Cast(UpdateEventID as varchar))) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_UserContact_Inter]
	)
Select * From hashData
