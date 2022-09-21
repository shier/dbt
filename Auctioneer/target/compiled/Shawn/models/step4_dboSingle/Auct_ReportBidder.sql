
Select
	cast([ReportID] as int) [REPORTID],
	cast([DisplayName] as nvarchar(4000)) [DISPLAYNAME] 
From stg.[Auct_ReportBidder_FinalView]