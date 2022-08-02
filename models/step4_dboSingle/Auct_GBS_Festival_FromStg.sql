{{ config(materialized='table',schema='dbo')}}
Select
	cast([FestivalID] as int) [FestivalID],
	cast([Active] as bit) [Active],
	cast([Name] as nvarchar(4000)) [Name],
	cast([Longitude] as nvarchar(4000)) [Longitude],
	cast([Latitude] as nvarchar(4000)) [Latitude],
	cast([GBS_FestivalID] as int) [GBS_FestivalID] 
From stg.[Auct_GBS_Festival_FinalView]