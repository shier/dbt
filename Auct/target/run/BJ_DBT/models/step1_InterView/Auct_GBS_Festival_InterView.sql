create view "dbo_stg"."Auct_GBS_Festival_InterView__dbt_tmp" as
    
Select
	[FESTIVALID] [FestivalID],
	[ACTIVE] [Active],
	cast([NAME] as nvarchar(4000)) [Name],
	cast([LONGITUDE] as nvarchar(4000)) [Longitude],
	cast([LATITUDE] as nvarchar(4000)) [Latitude],
	[GBS_FESTIVALID] [GBS_FestivalID]
From stg.[Auct_GBS_Festival_Raw]
