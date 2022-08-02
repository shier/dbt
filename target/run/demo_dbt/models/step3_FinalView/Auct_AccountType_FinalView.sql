create view "stg"."Auct_AccountType_FinalView__dbt_tmp" as
    
Select
	[AccountTypeID],[Name],[Created],[UpdateEventID] 
From stg.[Auct_AccountType_Incr] 
Where [dbt_valid_to] is null
