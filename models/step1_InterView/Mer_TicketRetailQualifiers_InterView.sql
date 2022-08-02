{{ config(materialized='view',schema='stg')}}
Select
	cast([ID] as nvarchar(4000)) [ID],
	[TICKET_SOURCE_ID] [Ticket_Source_ID],
	cast([QUALIFIERS_NAME] as nvarchar(4000)) [Qualifiers_Name],
	cast([QUALIFIERS_DESCRIPTION] as nvarchar(4000)) [Qualifiers_Description]
From stg.[Mer_TicketRetailQualifiers_Raw]
