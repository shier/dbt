
Select
	cast([Active] as bit) [ACTIVE],
	cast([WebActive] as bit) [WEBACTIVE],
	cast([CarMakeID] as int) [CARMAKEID],
	cast([Name] as nvarchar(1000)) [NAME],
	cast([Created] as datetime) [CREATED],
	cast([UpdateEventID] as int) [UPDATEEVENTID] 
From stg.[Auct_CarMake_FinalView]