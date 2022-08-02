
With hashData as (
		Select
			HASHBYTES('MD5', concat(Cast(Created as varchar), Cast(UpdateEventID as varchar), Question)) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_SecretQuestions_Inter]
	)
Select * From hashData
