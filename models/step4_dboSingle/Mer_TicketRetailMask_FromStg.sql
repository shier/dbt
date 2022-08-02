{{ config(materialized='table',schema='dbo')}}
Select
	cast([ID] as uniqueidentifier) [ID],
	cast([Mask_Name] as varchar(500)) [RetailMaskName],
	cast([Mask_Description] as varchar(8000)) [MaskDescription],
	cast([Ticket_Source_ID] as int) [TicketSourceID] 
From stg.[Mer_TicketRetailMask_FinalView]