{{ config(materialized='table',schema='dbo')}}
Select
	cast([AccountTypeID] as int) [ACCOUNTTYPEID],
	cast([BankAccountID] as int) [BANKACCOUNTID],
	cast([AddressID] as int) [ADDRESSID],
	cast([AccountNumber] as nvarchar(4000)) [ACCOUNTNUMBER],
	cast([Expiration] as DATETIME) [EXPIRATION],
	cast([BankContact] as nvarchar(4000)) [BANKCONTACT],
	cast([OwnerCustomerAccountID] as int) [OWNERCUSTOMERACCOUNTID],
	cast([BankAccountStatusID] as int) [BANKACCOUNTSTATUSID],
	cast([Created] as DATETIME) [CREATED],
	cast([UpdateEventID] as int) [UPDATEEVENTID],
	cast([MbnaAccount1] as nvarchar(4000)) [MBNAACCOUNT1],
	cast([MbnaAccount2] as nvarchar(4000)) [MBNAACCOUNT2],
	cast([MbnaAccount3] as nvarchar(4000)) [MBNAACCOUNT3],
	cast([PhoneID] as int) [PHONEID],
	cast([FaxID] as int) [FAXID],
	cast([BankName] as nvarchar(4000)) [BANKNAME],
	cast([Active] as nvarchar(4000)) [ACTIVE] 
From stg.[Auct_BankAccount_FinalView]