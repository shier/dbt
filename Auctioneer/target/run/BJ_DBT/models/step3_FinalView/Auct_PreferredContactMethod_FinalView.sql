create view "stg"."Auct_PreferredContactMethod_FinalView__dbt_tmp" as
    
Select
	[PreferredContactMethodID],[Name],[Created],[UpdateEventID] 
From stg.[Auct_PreferredContactMethod_Incr] 
Where [dbt_valid_to] is null
