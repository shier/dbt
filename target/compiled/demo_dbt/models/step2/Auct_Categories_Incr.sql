
With hashData as (
		Select
			HASHBYTES('MD5', concat(Cast(Create_Date as varchar), Cast(CarTypeID as varchar), Cast(UsersID as varchar))) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_Categories_Inter]
	)
Select * From hashData
