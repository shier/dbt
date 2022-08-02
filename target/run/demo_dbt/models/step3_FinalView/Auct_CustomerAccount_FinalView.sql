create view "stg"."Auct_CustomerAccount_FinalView__dbt_tmp" as
    
Select
	[CustomerAccountID],[ContactID],[CompanyID],[BankAccountID],[CustomerAccountStatusID],[Created],[UpdateEventID],[PhoneAssignmentID],[WebGUID],[ProxiBidID],[OnlineUserID] 
From stg.[Auct_CustomerAccount_Incr] 
Where [dbt_valid_to] is null
