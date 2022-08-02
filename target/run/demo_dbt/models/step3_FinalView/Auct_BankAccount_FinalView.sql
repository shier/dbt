create view "stg"."Auct_BankAccount_FinalView__dbt_tmp" as
    
Select
	[BankAccountID],[AccountTypeID],[AddressID],[AccountNumber],[Expiration],[BankContact],[OwnerCustomerAccountID],[BankAccountStatusID],[Created],[UpdateEventID],[MbnaAccount1],[MbnaAccount2],[MbnaAccount3],[PhoneID],[FaxID],[BankName],[Active] 
From stg.[Auct_BankAccount_Incr] 
Where [dbt_valid_to] is null
