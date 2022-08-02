
Select
	CARINFOID CarInfoID,
	OriginalHorsePower OriginalHorsepower,
	cast(HorsePower as nvarchar(4000)) Horsepower
From Auct_WebData_Raw