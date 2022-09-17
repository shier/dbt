{{ config(materialized='table',schema='dbo')}}
Select
	cast([IndustryTypeID] as int) [INDUSTRYTYPEID],
	cast([Name] as nvarchar(4000)) [NAME],
	cast([Created] as DATETIME) [CREATED],
	cast([UpdateEventID] as int) [UPDATEEVENTID] 
From stg.[Auct_IndustryType_FinalView]