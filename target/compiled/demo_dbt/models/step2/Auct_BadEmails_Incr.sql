
With hashData as (
		Select
			HASHBYTES('MD5', concat(First_Name, Last_Name, Ongage_Status)) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_BadEmails_Inter]
	)
Select * From hashData
