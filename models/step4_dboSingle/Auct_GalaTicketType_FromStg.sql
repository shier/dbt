{{ config(materialized='table',schema='dbo')}}
Select
	cast([GalaTicketTypeID] as int) [GalaTicketTypeID],
	cast([Name] as nvarchar(4000)) [Name],
	cast([Created] as DATETIME) [Created],
	cast([UpdateEventID] as int) [UpdateEventID] 
From stg.[Auct_GalaTicketType_FinalView]