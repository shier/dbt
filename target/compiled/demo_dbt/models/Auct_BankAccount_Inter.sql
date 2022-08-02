
Select
	ADDRESSID AddressID,
	OWNERCUSTOMERACCOUNTID OwnerCustomerAccountID,
	BANKACCOUNTSTATUSID BankAccountStatusID,
	UPDATEEVENTID UpdateEventID,
	PHONEID PhoneID,
	FAXID FaxID,
	ACCOUNTTYPEID AccountTypeID,
	BANKACCOUNTID BankAccountID,
	EXPIRATION Expiration,
	CREATED Created,
	cast(ACCOUNTNUMBER as nvarchar(4000)) AccountNumber,
	cast(BANKCONTACT as nvarchar(4000)) BankContact,
	cast(MBNAACCOUNT1 as nvarchar(4000)) MbnaAccount1,
	cast(MBNAACCOUNT2 as nvarchar(4000)) MbnaAccount2,
	cast(MBNAACCOUNT3 as nvarchar(4000)) MbnaAccount3,
	cast(BANKNAME as nvarchar(4000)) BankName,
	cast(ACTIVE as nvarchar(4000)) Active
From Auct_BankAccount_Raw