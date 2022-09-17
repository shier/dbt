{{ config(materialized='table',schema='dbo')}}
Select
	cast([ContactStatusID] as int) [CONTACTSTATUSID],
	cast([Name] as nvarchar(4000)) [NAME],
	cast([Created] as DATETIME) [CREATED],
	cast([UpdateEventID] as int) [UPDATEEVENTID] 
From stg.[Auct_ContactStatus_FinalView]