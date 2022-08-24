create view "dbo_stg"."Auct_TicketType_InterView__dbt_tmp" as
    
Select
	[TICKETTYPEID] [TicketTypeID],
	cast([NAME] as nvarchar(4000)) [Name],
	[CREATED] [Created],
	[UPDATEEVENTID] [UpdateEventID],
	[ACTIVE] [Active]
From stg.[Auct_TicketType_Raw]
