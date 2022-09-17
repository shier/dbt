{{ config(materialized='table',schema='dbo',tags=['update'])}}
Select
	cast([EmailID] as int) [EMAILID],
	cast([Email] as nvarchar(320)) [EMAILADDRESS],
	cast([ContactID] as int) [CONTACTID],
	cast([CustomerAccountID] as int) [CUSTOMERACCOUNTID],
	cast([Use] as char(1)) [USE],
	cast([Created] as datetime) [CREATED],
	cast([UpdateEventID] as int) [UPDATEEVENTID],
	cast([EmailBlastOptin] as char(1)) [EMAILBLASTOPTIN],
	cast([EmailBlastOptinPartners] as char(1)) [EMAILBLASTOPTINPARTNERS],
	cast([Active] as bit) [ACTIVE] 
From stg.[Auct_Emails_FinalView]