
Select
	cast([AuctionTypeBit] as int) [AUCTIONTYPEBIT],
	cast([Name] as nvarchar(4000)) [NAME],
	cast([Active] as bit) [ACTIVE] 
From stg.[Auct_AuctionTypeBits_FinalView]