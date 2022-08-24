{{ config(materialized='view',schema='stg')}}
Select
	[CUSTOMERACCOUNTID] [CustomerAccountID],
	[CONTACTID] [ContactID],
	[COMPANYID] [CompanyID],
	[BANKACCOUNTID] [BankAccountID],
	[CUSTOMERACCOUNTSTATUSID] [CustomerAccountStatusID],
	[CREATED] [Created],
	[UPDATEEVENTID] [UpdateEventID],
	[PHONEASSIGNMENTID] [PhoneAssignmentID],
	cast([WEBGUID] as nvarchar(4000)) [WebGUID],
	[PROXIBIDID] [ProxiBidID],
	[ONLINEUSERID] [OnlineUserID]
From stg.[Auct_CustomerAccount_Raw]
