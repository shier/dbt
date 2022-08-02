
With hashData as (
		Select
			HASHBYTES('MD5', concat(Cast(AddressID as varchar), Cast(OwnerCustomerAccountID as varchar), Cast(BankAccountStatusID as varchar), Cast(UpdateEventID as varchar), Cast(PhoneID as varchar), Cast(FaxID as varchar), Cast(AccountTypeID as varchar), Cast(Expiration as varchar), Cast(Created as varchar), AccountNumber, BankContact, MbnaAccount1, MbnaAccount2, MbnaAccount3, BankName, Active)) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_BankAccount_Inter]
	)
Select * From hashData
