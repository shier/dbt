
Select
	FESTIVALID FestivalID,
	GBS_FESTIVALID GBS_FestivalID,
	ACTIVE Active,
	cast(NAME as nvarchar(4000)) Name,
	cast(LONGITUDE as nvarchar(4000)) Longitude,
	cast(LATITUDE as nvarchar(4000)) Latitude
From Auct_Festival_Raw