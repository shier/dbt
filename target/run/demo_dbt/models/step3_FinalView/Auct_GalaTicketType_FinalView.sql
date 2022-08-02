create view "stg"."Auct_GalaTicketType_FinalView__dbt_tmp" as
    
Select
	[GalaTicketTypeID],[Name],[Created],[UpdateEventID] 
From stg.[Auct_GalaTicketType_Incr] 
Where [dbt_valid_to] is null
