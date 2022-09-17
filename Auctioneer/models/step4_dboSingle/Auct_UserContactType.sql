{{ config(materialized='table',schema='dbo')}}
Select
	cast([UserContactTypeID] as int) [USERCONTACTTYPEID],
	cast([Name] as nvarchar(4000)) [NAME],
	cast([Created] as datetime) [CREATED],
	cast([UpdateEventID] as int) [UPDATEEVENTID] 
From stg.[Auct_UserContactType_FinalView]