{{ config(materialized='view',schema='stg')}}
Select
	[GALATICKETTYPEID] [GalaTicketTypeID],
	cast([NAME] as nvarchar(4000)) [Name],
	[CREATED] [Created],
	[UPDATEEVENTID] [UpdateEventID]
From stg.[Auct_GalaTicketType_Raw]
