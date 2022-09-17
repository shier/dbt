{{ config(materialized='table',schema='dbo')}}
Select
	cast([CustomerAccountID] as int) [CUSTOMERACCOUNTID],
	cast([ContactID] as int) [CONTACTID],
	cast([CompanyID] as int) [COMPANYID],
	cast([BankAccountID] as int) [BANKACCOUNTID],
	cast([CustomerAccountStatusID] as int) [CUSTOMERACCOUNTSTATUSID],
	cast([Created] as datetime) [CREATED],
	cast([UpdateEventID] as int) [UPDATEEVENTID],
	cast([PhoneAssignmentID] as int) [PHONEASSIGNMENTID],
	cast([WebGUID] as varchar(50)) [WEBGUID],
	cast([ProxiBidID] as int) [PROXIBIDID],
	cast([OnlineUserID] as int) [ONLINEUSERID] 
From stg.[Auct_CustomerAccount_FinalView]