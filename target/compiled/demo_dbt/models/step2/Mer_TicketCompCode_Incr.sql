
With hashData as (
		Select
			HASHBYTES('MD5', concat(Comp_Name, Comp_Description)) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Mer_TicketCompCode_Inter]
	)
Select * From hashData
