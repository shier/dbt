create view "stg"."Mer_TicketPriceCode_InterView__dbt_tmp" as
    
Select
	cast([ID] as nvarchar(4000)) [ID],
	[TICKET_SOURCE_ID] [Ticket_Source_ID],
	cast([CODE_NAME] as nvarchar(4000)) [Code_Name],
	cast([CODE_DESCRIPTION] as nvarchar(4000)) [Code_Description]
From stg.[Mer_TicketPriceCode_Raw]
