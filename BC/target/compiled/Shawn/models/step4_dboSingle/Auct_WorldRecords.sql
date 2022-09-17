
Select
	cast([Wrsp] as numeric(18,2)) [WRSP],
	cast([LotNumber] as numeric(18,2)) [LOTNUMBER],
	cast([Wrsh] as numeric(18,2)) [WRSH],
	cast([Wrsscm] as numeric(18,2)) [WRSSCM],
	cast([AuctionID] as int) [AUCTIONID],
	cast([Comments] as nvarchar(4000)) [COMMENTS],
	cast([Created] as datetime) [CREATED] 
From stg.[Auct_WorldRecords_FinalView]