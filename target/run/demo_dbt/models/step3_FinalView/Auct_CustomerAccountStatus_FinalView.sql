create view "stg"."Auct_CustomerAccountStatus_FinalView__dbt_tmp" as
    
Select
	[CustomerAccountStatusID],[Name],[Created],[UpdateEventID] 
From stg.[Auct_CustomerAccountStatus_Incr] 
Where [dbt_valid_to] is null
