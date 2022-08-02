{{ config(materialized='view',schema='stg')}}
Select
	[ID],[Mask_Name],[Mask_Description],[Ticket_Source_ID] 
From stg.[Mer_TicketRetailMask_Incr] 
Where [dbt_valid_to] is null