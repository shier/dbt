{{ config(materialized='view',schema='stg')}}
Select
	[ID],[Ticket_Source_ID],[Qualifiers_Name],[Qualifiers_Description] 
From stg.[Mer_TicketRetailQualifiers_Incr] 
Where [dbt_valid_to] is null