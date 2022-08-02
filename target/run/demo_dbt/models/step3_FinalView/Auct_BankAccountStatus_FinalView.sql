create view "stg"."Auct_BankAccountStatus_FinalView__dbt_tmp" as
    
Select
	[BankAccountStatusID],[Name],[Created],[UpdateEventID] 
From stg.[Auct_BankAccountStatus_Incr] 
Where [dbt_valid_to] is null
