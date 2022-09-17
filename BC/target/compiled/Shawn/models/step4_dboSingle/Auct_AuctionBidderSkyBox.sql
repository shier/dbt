
Select
	cast([Active] as bit) [ACTIVE],
	cast([AuctionBidderID] as int) [AUCTIONBIDDERID],
	cast([SkyBoxTicketNumber] as int) [SKYBOXTICKETNUMBER],
	cast([Created] as DATETIME) [CREATED],
	cast([CreatedByUserID] as int) [CREATEDBYUSERID],
	cast([AuctionID] as int) [AUCTIONID] 
From stg.[Auct_AuctionBidderSkyBox_FinalView]