
With hashData as (
		Select
			HASHBYTES('MD5', concat(Cast(DateCreated as varchar), Cast(ContactID as varchar), FirstName, MiddleInitial, LastName)) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_NewAdditions_Inter]
	)
Select * From hashData
