
Select
	cast([CarStyleID] as int) [CARSTYLEID],
	cast([Name] as nvarchar(1000)) [NAME],
	cast([Created] as datetime) [CREATED],
	cast([UpdateEventID] as int) [UPDATEEVENTID],
	cast([Active] as bit) [ACTIVE] 
From stg.[Auct_CarStyle_FinalView]