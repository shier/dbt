{{ config(materialized='view',schema='stg')}}
Select
	[SKYBOXTICKETNUMBER] [SkyBoxTicketNumber],
	[ACTIVE] [Active],
	[AUCTIONBIDDERID] [AuctionBidderID],
	[CREATED] [Created],
	[CREATEDBYUSERID] [CreatedByUserID],
	[AUCTIONID] [AuctionID]
From stg.[Auct_AuctionBidderSkyBox_Raw]
