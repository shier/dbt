
With hashData as (
		Select
			HASHBYTES('MD5', concat(Cast(UsersID as varchar), Cast(DateCreated as varchar), TableName)) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_Tables_Inter]
	)
Select * From hashData
