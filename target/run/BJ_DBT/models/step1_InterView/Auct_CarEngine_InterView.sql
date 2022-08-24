create view "stg"."Auct_CarEngine_InterView__dbt_tmp" as
    
Select
	[CARENGINEID] [CarEngineID],
	[DISPLACEMENT] [Displacement],
	[HORSEPOWER] [Horsepower],
	cast([NAME] as nvarchar(4000)) [Name],
	[CYLINDERS] [Cylinders],
	[CREATED] [Created],
	[UPDATEEVENTID] [UpdateEventID]
From stg.[Auct_CarEngine_Raw]
