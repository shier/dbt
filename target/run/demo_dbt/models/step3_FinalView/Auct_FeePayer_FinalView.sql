create view "stg"."Auct_FeePayer_FinalView__dbt_tmp" as
    
Select
	[FeePayerID],[Name],[Created],[UpdateEventID] 
From stg.[Auct_FeePayer_Incr] 
Where [dbt_valid_to] is null
