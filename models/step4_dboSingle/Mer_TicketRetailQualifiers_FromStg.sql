{{ config(materialized='table',schema='dbo')}}
Select
	cast([ID] as uniqueidentifier) [ID],
	cast([Ticket_Source_ID] as int) [TicketSourceID],
	cast([Qualifiers_Name] as varchar(500)) [RetailQualifierName],
	cast([Qualifiers_Description] as varchar(8000)) [QualifiersDescription] 
From stg.[Mer_TicketRetailQualifiers_FinalView]