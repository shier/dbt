
With hashData as (
		Select
			HASHBYTES('MD5', concat(LastName, Message, Email, FirstName)) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[AH_Contactus_Inter]
	)
Select * From hashData
