
Select
	cast([DrivertentLocationID] as int) [DRIVERTENTLOCATIONID],
	cast([DrivertentLocationName] as nvarchar(4000)) [DRIVERTENTLOCATIONNAME],
	cast([Created] as DATETIME) [CREATED],
	cast([UpdateEventID] as int) [UPDATEEVENTID] 
From stg.[Auct_DrivertentLocation_FinalView]