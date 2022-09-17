{{ config(materialized='table',schema='dbo')}}
Select
	cast([TicketTypeID] as int) [TICKETTYPEID],
	cast([Name] as nvarchar(4000)) [NAME],
	cast([Created] as datetime) [CREATED],
	cast([UpdateEventID] as int) [UPDATEEVENTID],
	cast([Active] as bit) [ACTIVE] 
From stg.[Auct_TicketType_FinalView]