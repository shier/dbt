{{ config(materialized='table',schema='dbo')}}
Select
	cast([ID] as uniqueidentifier) [ID],
	cast([Ticket_Source_ID] as int) [TicketSourceID],
	cast([Code_Name] as varchar(500)) [CodeName],
	cast([Code_Description] as varchar(8000)) [PriceCodeDescription] 
From stg.[Mer_TicketPriceCode_FinalView]