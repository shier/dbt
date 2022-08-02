
Select
	TICKET_SOURCE_ID Ticket_Source_ID,
	cast(ID as nvarchar(4000)) ID,
	cast(CODE_NAME as nvarchar(4000)) Code_Name,
	cast(CODE_DESCRIPTION as nvarchar(4000)) Code_Description
From Mer_TicketPriceCode_Raw