{{ config(materialized='view',schema='stg')}}
Select
	[BANKACCOUNTID] [BankAccountID],
	[ACCOUNTTYPEID] [AccountTypeID],
	[ADDRESSID] [AddressID],
	cast([ACCOUNTNUMBER] as nvarchar(4000)) [AccountNumber],
	[EXPIRATION] [Expiration],
	cast([BANKCONTACT] as nvarchar(4000)) [BankContact],
	[OWNERCUSTOMERACCOUNTID] [OwnerCustomerAccountID],
	[BANKACCOUNTSTATUSID] [BankAccountStatusID],
	[CREATED] [Created],
	[UPDATEEVENTID] [UpdateEventID],
	cast([MBNAACCOUNT1] as nvarchar(4000)) [MbnaAccount1],
	cast([MBNAACCOUNT2] as nvarchar(4000)) [MbnaAccount2],
	cast([MBNAACCOUNT3] as nvarchar(4000)) [MbnaAccount3],
	[PHONEID] [PhoneID],
	[FAXID] [FaxID],
	cast([BANKNAME] as nvarchar(4000)) [BankName],
	cast([ACTIVE] as nvarchar(4000)) [Active]
From stg.[Auct_BankAccount_Raw]
