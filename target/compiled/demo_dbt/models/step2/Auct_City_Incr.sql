
With hashData as (
		Select
			HASHBYTES('MD5', concat(Name, County, State, StateAbbreviation, PostalCode)) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_City_Inter]
	)
Select * From hashData
