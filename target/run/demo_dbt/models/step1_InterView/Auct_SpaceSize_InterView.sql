create view "stg"."Auct_SpaceSize_InterView__dbt_tmp" as
    
Select
	[SPACESIZEID] [SpaceSizeID],
	cast([NAME] as nvarchar(4000)) [Name],
	[CREATED] [Created],
	[UPDATEEVENTID] [UpdateEventID]
From stg.[Auct_SpaceSize_Raw]
