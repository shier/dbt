{{ config(materialized='view',schema='stg')}}
Select
	[CustomerAccountID],[ContactID],[CompanyID],[BankAccountID],[CustomerAccountStatusID],[Created],[UpdateEventID],[PhoneAssignmentID],[WebGUID],[ProxiBidID],[OnlineUserID] 
From stg.[Auct_CustomerAccount_Incr] 
Where [dbt_valid_to] is null