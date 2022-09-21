
Select
	cast([ReportID] as int) [REPORTID],
	cast([Permission] as nvarchar(4000)) [PERMISSION] 
From stg.[Auct_ReportPermission_FinalView]