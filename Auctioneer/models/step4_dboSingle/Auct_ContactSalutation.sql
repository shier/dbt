{{ config(materialized='table',schema='dbo')}}
Select
	cast([ContactSalutationID] as int) [CONTACTSALUTATIONID],
	cast([Name] as nvarchar(4000)) [NAME],
	cast([Created] as DATETIME) [CREATED],
	cast([UpdateEventID] as int) [UPDATEEVENTID] 
From stg.[Auct_ContactSalutation_FinalView]