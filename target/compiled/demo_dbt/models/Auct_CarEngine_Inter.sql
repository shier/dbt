
Select
	UPDATEEVENTID UpdateEventID,
	CREATED Created,
	CYLINDERS Cylinders,
	CARENGINEID CarEngineID,
	DISPLACEMENT Displacement,
	HORSEPOWER Horsepower,
	cast(NAME as nvarchar(4000)) Name
From Auct_CarEngine_Raw