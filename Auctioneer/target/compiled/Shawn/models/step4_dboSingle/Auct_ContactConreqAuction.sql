
Select
	cast([ContactID] as int) [CONTACTID],
	cast([AuctionID] as int) [AUCTIONID],
	cast([Count] as int) [COUNT] 
From stg.[Auct_ContactConreqAuction_FinalView]