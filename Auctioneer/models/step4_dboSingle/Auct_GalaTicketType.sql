{{ config(materialized='table',schema='dbo')}}
Select
	cast([GalaTicketTypeID] as int) [GALATICKETTYPEID],
	cast([Name] as nvarchar(4000)) [NAME],
	cast([Created] as DATETIME) [CREATED],
	cast([UpdateEventID] as int) [UPDATEEVENTID] 
From stg.[Auct_GalaTicketType_FinalView]