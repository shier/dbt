
Select
	[CustomerAccountID],[ContactID],[CompanyID],[BankAccountID],[CustomerAccountStatusID],[UpdateEventID],[PhoneAssignmentID],[ProxiBidID],[OnlineUserID],[Created],[WebGUID] 
From stg.[Auct_CustomerAccount_Incr] 
Where [dbt_valid_to] is null