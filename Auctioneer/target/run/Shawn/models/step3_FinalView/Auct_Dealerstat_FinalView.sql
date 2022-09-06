create view "stg"."Auct_Dealerstat_FinalView__dbt_tmp" as
    
Select
	[DealerstatID],[Name],[Created],[UpdateEventID] 
From stg.[Auct_Dealerstat_Incr] 
Where [dbt_valid_to] is null
