
Select
	cast([BidderSourceID] as int) [BIDDERSOURCEID],
	cast([Name] as nvarchar(4000)) [NAME],
	cast([DisplayOrder] as int) [DISPLAYORDER],
	cast([Active] as bit) [ACTIVE] 
From stg.[Auct_BidderSources_FinalView]