{{ config(materialized='view',schema='stg')}}
Select
	[ID],[Ticket_Source_ID],[Code_Name],[Code_Description] 
From stg.[Mer_TicketPriceCode_Incr] 
Where [dbt_valid_to] is null