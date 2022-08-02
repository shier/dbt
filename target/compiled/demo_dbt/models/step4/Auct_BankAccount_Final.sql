
Select
	[BankAccountID],[AddressID],[OwnerCustomerAccountID],[BankAccountStatusID],[UpdateEventID],[PhoneID],[FaxID],[AccountTypeID],[Expiration],[Created],[AccountNumber],[BankContact],[MbnaAccount1],[MbnaAccount2],[MbnaAccount3],[BankName],[Active] 
From stg.[Auct_BankAccount_Incr] 
Where [dbt_valid_to] is null