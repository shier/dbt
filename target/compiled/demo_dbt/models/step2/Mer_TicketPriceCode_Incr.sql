
With hashData as (
		Select
			HASHBYTES('MD5', concat(Cast(Ticket_Source_ID as varchar), Code_Name, Code_Description)) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Mer_TicketPriceCode_Inter]
	)
Select * From hashData
