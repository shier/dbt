
With hashData as (
		Select
			HASHBYTES('MD5', concat(Name, Cast(Created as varchar), Cast(ConfigID as varchar), Cast(UpdateEventID as varchar), Cast(UsersID as varchar))) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_ConnectAssignment_Inter]
	)
Select * From hashData
