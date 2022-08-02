
With hashData as (
		Select
			HASHBYTES('MD5', concat(Cast(Created as varchar), Cast(CustomerAccountID as varchar), Cast(ConsignmentID as varchar), Cast(UsersID as varchar), Cast(UpdateEventID as varchar), NoteType, Note)) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_ConsignmentLog_Inter]
	)
Select * From hashData
