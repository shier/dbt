{{ config(materialized='table',schema='dbo')}}
Select
	cast([CarTypeID] as int) [CARTYPEID],
	cast([Name] as nvarchar(1000)) [NAME],
	cast([Created] as datetime) [CREATED],
	cast([UpdateEventID] as int) [UPDATEEVENTID] 
From stg.[Auct_CarType_FinalView]