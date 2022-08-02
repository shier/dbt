{{ config(materialized='table',schema='dbo')}}
Select
	cast([TicketTypeID] as int) [TicketTypeID],
	cast([Name] as nvarchar(4000)) [Name],
	cast([Created] as datetime) [Created],
	cast([UpdateEventID] as int) [UpdateEventID],
	cast([Active] as bit) [Active] 
From stg.[Auct_TicketType_FinalView]