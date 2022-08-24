create view "dbo_stg"."Auct_AuctionBidderSkyBox_InterView__dbt_tmp" as
    
Select
	[SKYBOXTICKETNUMBER] [SkyBoxTicketNumber],
	[ACTIVE] [Active],
	[AUCTIONBIDDERID] [AuctionBidderID],
	[CREATED] [Created],
	[CREATEDBYUSERID] [CreatedByUserID],
	[AUCTIONID] [AuctionID]
From stg.[Auct_AuctionBidderSkyBox_Raw]
