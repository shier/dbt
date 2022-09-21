
Select
	cast([CarOptioncarID] as int) [CAROPTIONCARID],
	cast([CarOptionID] as int) [CAROPTIONID],
	cast([CarID] as int) [CARID],
	cast([Created] as DATETIME) [CREATED],
	cast([UpdateEventID] as int) [UPDATEEVENTID] 
From stg.[Auct_CarOptioncar_FinalView]