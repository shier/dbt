create view "stg"."Auct_Location_InterView__dbt_tmp" as
    
Select
	[LOCATIONID] [LocationID],
	cast([NAME] as nvarchar(4000)) [Name],
	[CREATED] [Created],
	[UPDATEEVENTID] [UpdateEventID]
From stg.[Auct_Location_Raw]
