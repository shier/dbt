{{ config(materialized='table',schema='dbo')}}
Select
	cast([BadgeTypeID] as int) [BADGETYPEID],
	cast([Name] as nvarchar(4000)) [NAME],
	cast([Created] as DATETIME) [CREATED],
	cast([UpdateEventID] as int) [UPDATEEVENTID] 
From stg.[Auct_BadgeType_FinalView]