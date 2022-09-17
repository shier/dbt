{{ config(materialized='table',schema='dbo')}}
Select
	cast([PhoneTypeID] as int) [PHONETYPEID],
	cast([Name] as varchar(64)) [NAME],
	cast([Created] as datetime) [CREATED],
	cast([UpdateEventID] as int) [UPDATEEVENTID] 
From stg.[Auct_PhoneType_FinalView]