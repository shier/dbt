{{ config(materialized='table',schema='dbo')}}
Select
	cast([ConnectTypeID] as int) [CONNECTTYPEID],
	cast([Name] as nvarchar(4000)) [NAME],
	cast([Created] as DATETIME) [CREATED],
	cast([UpdateEventID] as int) [UPDATEEVENTID] 
From stg.[Auct_ConnectType_FinalView]