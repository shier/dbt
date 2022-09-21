
Select
	cast([WebActive] as bit) [WEBACTIVE],
	cast([SourceID] as int) [SOURCEID],
	cast([SourceName] as nvarchar(4000)) [SOURCENAME],
	cast([Created] as datetime) [CREATED],
	cast([UpdateEventID] as int) [UPDATEEVENTID],
	cast([Active] as nvarchar(4000)) [ACTIVE],
	cast([DisplayOrder] as int) [DISPLAYORDER] 
From stg.[Auct_Sources_FinalView]