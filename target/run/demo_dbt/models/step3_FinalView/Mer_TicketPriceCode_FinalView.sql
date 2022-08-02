create view "stg"."Mer_TicketPriceCode_FinalView__dbt_tmp" as
    
Select
	[ID],[Ticket_Source_ID],[Code_Name],[Code_Description] 
From stg.[Mer_TicketPriceCode_Incr] 
Where [dbt_valid_to] is null
