
With hashData as (
		Select
			HASHBYTES('MD5', concat(ConnectionString, Environment)) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_ConnectionString_Inter]
	)
Select * From hashData
