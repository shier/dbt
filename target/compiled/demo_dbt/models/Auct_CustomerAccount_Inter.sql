
Select
	CONTACTID ContactID,
	COMPANYID CompanyID,
	BANKACCOUNTID BankAccountID,
	CUSTOMERACCOUNTSTATUSID CustomerAccountStatusID,
	UPDATEEVENTID UpdateEventID,
	PHONEASSIGNMENTID PhoneAssignmentID,
	CUSTOMERACCOUNTID CustomerAccountID,
	PROXIBIDID ProxiBidID,
	ONLINEUSERID OnlineUserID,
	CREATED Created,
	cast(WEBGUID as nvarchar(4000)) WebGUID
From Auct_CustomerAccount_Raw