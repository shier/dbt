
With hashData as (
		Select
			HASHBYTES('MD5', concat(Cast(Ticket_Source_ID as varchar), Qualifiers_Name, Qualifiers_Description)) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Mer_TicketRetailQualifiers_Inter]
	)
Select * From hashData
