create view "dbo_stg"."Auct_ReadingType_InterView__dbt_tmp" as
    
Select
	[READINGTYPEID] [ReadingTypeID],
	cast([NAME] as nvarchar(4000)) [Name],
	[CREATED] [Created],
	[UPDATEEVENTID] [UpdateEventID]
From stg.[Auct_ReadingType_Raw]
