{{ config(materialized='view',schema='stg')}}
Select
	cast([ID] as nvarchar(4000)) [ID],
	cast([MASK_NAME] as nvarchar(4000)) [Mask_Name],
	cast([MASK_DESCRIPTION] as nvarchar(4000)) [Mask_Description],
	[TICKET_SOURCE_ID] [Ticket_Source_ID]
From stg.[Mer_TicketRetailMask_Raw]
