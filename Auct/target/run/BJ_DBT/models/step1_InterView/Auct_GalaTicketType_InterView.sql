create view "dbo_stg"."Auct_GalaTicketType_InterView__dbt_tmp" as
    
Select
	[GALATICKETTYPEID] [GalaTicketTypeID],
	cast([NAME] as nvarchar(4000)) [Name],
	[CREATED] [Created],
	[UPDATEEVENTID] [UpdateEventID]
From stg.[Auct_GalaTicketType_Raw]
