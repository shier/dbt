create view "dbo_stg"."Auct_MediaPosition_InterView__dbt_tmp" as
    
Select
	[MEDIAPOSITIONID] [MediaPositionID],
	cast([NAME] as nvarchar(4000)) [Name],
	[CREATED] [Created],
	[UPDATEEVENTID] [UpdateEventID]
From stg.[Auct_MediaPosition_Raw]
