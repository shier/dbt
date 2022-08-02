{{ config(materialized='table',schema='dbo')}}
Select
	cast([ContactSalutationID] as int) [ContactSalutationID],
	cast([Name] as nvarchar(4000)) [Name],
	cast([Created] as DATETIME) [Created],
	cast([UpdateEventID] as int) [UpdateEventID] 
From stg.[Auct_ContactSalutation_FinalView]