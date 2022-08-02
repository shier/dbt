
Select
	[REPORTID] [ReportID],
	cast([DISPLAYNAME] as nvarchar(4000)) [DisplayName]
From stg.[Auct_ReportBidder_Raw]