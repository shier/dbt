create view "dbo_stg"."Auct_CustomerAccount_InterView__dbt_tmp" as
    
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
