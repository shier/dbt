
With hashData as (
		Select
			HASHBYTES('MD5', concat(Cast(CharityID as varchar), Cast(Active as varchar))) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_CharityConsignment_Inter]
	)
Select * From hashData
