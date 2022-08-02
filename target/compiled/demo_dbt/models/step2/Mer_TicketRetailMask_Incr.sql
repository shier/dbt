
With hashData as (
		Select
			HASHBYTES('MD5', concat(Mask_Name, Mask_Description, Cast(Ticket_Source_ID as varchar))) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Mer_TicketRetailMask_Inter]
	)
Select * From hashData
