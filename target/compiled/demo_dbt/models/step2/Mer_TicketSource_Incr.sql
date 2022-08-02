
With hashData as (
		Select
			HASHBYTES('MD5', concat(Source_Name, Source_Description)) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Mer_TicketSource_Inter]
	)
Select * From hashData
