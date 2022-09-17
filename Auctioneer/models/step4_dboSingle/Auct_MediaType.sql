{{ config(materialized='table',schema='dbo')}}
Select
	cast([MediaTypeID] as int) [MEDIATYPEID],
	cast([Name] as nvarchar(4000)) [NAME],
	cast([Created] as datetime) [CREATED],
	cast([UpdateEventID] as int) [UPDATEEVENTID] 
From stg.[Auct_MediaType_FinalView]