
With hashData as (
		Select
			HASHBYTES('MD5', concat(Cast(UsersID as varchar), Cast(UpdateEventID as varchar), Cast(Login as varchar), Cast(Logout as varchar), Cast(Created as varchar))) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_Logoutlog_Inter]
	)
Select * From hashData
