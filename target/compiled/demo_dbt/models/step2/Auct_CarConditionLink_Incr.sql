
With hashData as (
		Select
			HASHBYTES('MD5', concat(Cast(Created as varchar), Cast(CarID as varchar), Cast(CarConditionID as varchar), Cast(UpdateEventID as varchar))) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_CarConditionLink_Inter]
	)
Select * From hashData
