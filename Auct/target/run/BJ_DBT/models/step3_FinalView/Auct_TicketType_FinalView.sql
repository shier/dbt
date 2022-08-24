create view "stg"."Auct_TicketType_FinalView__dbt_tmp" as
    
Select
	[TicketTypeID],[Name],[Created],[UpdateEventID],[Active] 
From stg.[Auct_TicketType_Incr] 
Where [dbt_valid_to] is null
