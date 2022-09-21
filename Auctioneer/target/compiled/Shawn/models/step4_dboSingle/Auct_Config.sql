
Select
	cast([ConfigID] as int) [CONFIGID],
	cast([Stub1] as nvarchar(4000)) [STUB1],
	cast([Stub2] as nvarchar(4000)) [STUB2],
	cast([Created] as DATETIME) [CREATED],
	cast([UpdateEventID] as int) [UPDATEEVENTID] 
From stg.[Auct_Config_FinalView]