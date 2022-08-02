
With hashData as (
		Select
			HASHBYTES('MD5', Cast(Created as varchar)) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_BillofSalePrinted_Inter]
	)
Select * From hashData
