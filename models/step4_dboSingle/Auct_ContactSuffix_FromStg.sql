{{ config(materialized='table',schema='dbo')}}
Select
	cast([ContactSuffixID] as int) [ContactSuffixID],
	cast([Name] as nvarchar(4000)) [Name],
	cast([Created] as DATETIME) [Created],
	cast([UpdateEventID] as int) [UpdateEventID] 
From stg.[Auct_ContactSuffix_FinalView]