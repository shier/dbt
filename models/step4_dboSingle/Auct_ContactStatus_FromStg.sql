{{ config(materialized='table',schema='dbo')}}
Select
	cast([ContactStatusID] as int) [ContactStatusID],
	cast([Name] as nvarchar(4000)) [Name],
	cast([Created] as DATETIME) [Created],
	cast([UpdateEventID] as int) [UpdateEventID] 
From stg.[Auct_ContactStatus_FinalView]