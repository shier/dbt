{{ config(materialized='table',schema='dbo')}}
Select
	cast([ContactTypeID] as int) [CONTACTTYPEID],
	cast([Name] as varchar(500)) [NAME],
	cast([Created] as datetime) [CREATED],
	cast([UpdateEventID] as int) [UPDATEEVENTID],
	cast([Active] as bit) [ACTIVE] 
From stg.[Auct_ContactType_FinalView]