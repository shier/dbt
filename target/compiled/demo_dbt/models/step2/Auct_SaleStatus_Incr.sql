
With hashData as (
		Select
			HASHBYTES('MD5', concat(Cast(UpdateEventID as varchar), Cast(Created as varchar), Name, ClassName)) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_SaleStatus_Inter]
	)
Select * From hashData
