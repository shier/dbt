create view "stg"."Auct_ConnectAssignment_FinalView__dbt_tmp" as
    
Select
	[ConnectID],[Name],[UsersID],[ConfigID],[Created],[UpdateEventID] 
From stg.[Auct_ConnectAssignment_Incr] 
Where [dbt_valid_to] is null
