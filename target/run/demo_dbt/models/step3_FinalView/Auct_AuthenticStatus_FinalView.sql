create view "stg"."Auct_AuthenticStatus_FinalView__dbt_tmp" as
    
Select
	[AuthenticStatusID],[Name],[BidGeneratorText],[Created],[UpdateEventID] 
From stg.[Auct_AuthenticStatus_Incr] 
Where [dbt_valid_to] is null
