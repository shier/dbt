
Select
	cast([CarInfoID] as int) [CARINFOID],
	cast([Horsepower] as nvarchar(4000)) [HorsePower],
	cast([OriginalHorsepower] as int) [OriginalHorsePower] 
From stg.[Auct_AA_WebData_FinalView]