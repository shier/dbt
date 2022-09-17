{{ config(materialized='table',schema='dbo')}}
Select
	cast([ReadingTypeID] as int) [READINGTYPEID],
	cast([Name] as nvarchar(4000)) [NAME],
	cast([Created] as datetime) [CREATED],
	cast([UpdateEventID] as int) [UPDATEEVENTID] 
From stg.[Auct_ReadingType_FinalView]