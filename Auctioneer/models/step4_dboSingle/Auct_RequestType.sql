{{ config(materialized='table',schema='dbo')}}
Select
	cast([RequestTypeID] as int) [REQUESTTYPEID],
	cast([Name] as nvarchar(4000)) [NAME],
	cast([Created] as datetime) [CREATED],
	cast([UpdateEventID] as int) [UPDATEEVENTID] 
From stg.[Auct_RequestType_FinalView]