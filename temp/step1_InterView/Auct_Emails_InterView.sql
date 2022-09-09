{{ config(materialized='view',schema='stg')}}
Select
	[EMAILID] [EmailID],
	cast([EMAILADDRESS] as nvarchar(4000)) [EmailAddress],
	[CONTACTID] [ContactID],
	[CUSTOMERACCOUNTID] [CustomerAccountID],
	cast([USE] as nvarchar(4000)) [Use],
	[CREATED] [Created],
	[UPDATEEVENTID] [UpdateEventID],
	cast([EMAILBLASTOPTIN] as nvarchar(4000)) [EmailBlastOptin],
	cast([EMAILBLASTOPTINPARTNERS] as nvarchar(4000)) [EmailBlastOptinPartners],
	cast([ACTIVE] as nvarchar(4000)) [Active]
From stg.[Auct_Emails_Raw]
