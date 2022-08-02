
Select
	[CUSTOMERACCOUNTSTATUSID] [CustomerAccountStatusID],
	cast([NAME] as nvarchar(4000)) [Name],
	[CREATED] [Created],
	[UPDATEEVENTID] [UpdateEventID]
From stg.[Auct_CustomerAccountStatus_Raw]