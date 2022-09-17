{{ config(materialized='table',schema='dbo')}}
Select
	cast([ContactSuffixID] as int) [CONTACTSUFFIXID],
	cast([Name] as nvarchar(4000)) [NAME],
	cast([Created] as DATETIME) [CREATED],
	cast([UpdateEventID] as int) [UPDATEEVENTID] 
From stg.[Auct_ContactSuffix_FinalView]