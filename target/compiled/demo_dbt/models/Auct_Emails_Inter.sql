
Select
	[CREATED] [Created],
	[EMAILID] [EmailID],
	[CONTACTID] [ContactID],
	[CUSTOMERACCOUNTID] [CustomerAccountID],
	[UPDATEEVENTID] [UpdateEventID],
	cast([EMAILADDRESS] as nvarchar(4000)) [EmailAddress],
	cast([USE] as nvarchar(4000)) [Use],
	cast([EMAILBLASTOPTIN] as nvarchar(4000)) [EmailBlastOptin],
	cast([EMAILBLASTOPTINPARTNERS] as nvarchar(4000)) [EmailBlastOptinPartners],
	cast([ACTIVE] as nvarchar(4000)) [Active]
From stg.[Auct_Emails_Raw]