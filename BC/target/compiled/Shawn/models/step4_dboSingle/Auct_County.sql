
Select
	cast([StateAbbreviation] as nvarchar(4000)) [STATEABBREVIATION],
	cast([County] as nvarchar(4000)) [COUNTY] 
From stg.[Auct_County_FinalView]