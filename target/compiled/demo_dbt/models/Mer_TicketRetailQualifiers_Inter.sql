
Select
	TICKET_SOURCE_ID Ticket_Source_ID,
	cast(ID as nvarchar(4000)) ID,
	cast(QUALIFIERS_NAME as nvarchar(4000)) Qualifiers_Name,
	cast(QUALIFIERS_DESCRIPTION as nvarchar(4000)) Qualifiers_Description
From Mer_TicketRetailQualifiers_Raw