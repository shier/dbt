create view "dbo_stg"."Auct_CarType_InterView__dbt_tmp" as
    
Select
	[CARTYPEID] [CarTypeID],
	cast([NAME] as nvarchar(4000)) [Name],
	[CREATED] [Created],
	[UPDATEEVENTID] [UpdateEventID]
From stg.[Auct_CarType_Raw]
