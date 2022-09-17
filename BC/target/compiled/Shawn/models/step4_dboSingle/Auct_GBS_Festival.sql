
Select
	cast([Active] as bit) [ACTIVE],
	cast([FestivalID] as int) [FESTIVALID],
	cast([Name] as nvarchar(4000)) [NAME],
	cast([Longitude] as nvarchar(4000)) [LONGITUDE],
	cast([Latitude] as nvarchar(4000)) [LATITUDE],
	cast([GBS_FestivalID] as int) [GBS_FESTIVALID] 
From stg.[Auct_GBS_Festival_FinalView]