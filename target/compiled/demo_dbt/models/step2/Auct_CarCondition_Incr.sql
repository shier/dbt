
With hashData as (
		Select
			HASHBYTES('MD5', concat(Cast(WebActive as varchar), Cast(Active as varchar), Cast(Created as varchar), Cast(UpdateEventID as varchar), Cast(CarConditionBit as varchar), Name)) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_CarCondition_Inter]
	)
Select * From hashData
