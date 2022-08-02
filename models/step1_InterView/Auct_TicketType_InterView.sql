{{ config(materialized='view',schema='stg')}}
Select
	[TICKETTYPEID] [TicketTypeID],
	cast([NAME] as nvarchar(4000)) [Name],
	[CREATED] [Created],
	[UPDATEEVENTID] [UpdateEventID],
	[ACTIVE] [Active]
From stg.[Auct_TicketType_Raw]
