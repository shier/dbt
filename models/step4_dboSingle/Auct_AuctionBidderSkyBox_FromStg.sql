{{ config(materialized='table',schema='dbo')}}
Select
	cast([SkyBoxTicketNumber] as int) [SkyBoxTicketNumber],
	cast([Active] as bit) [Active],
	cast([AuctionBidderID] as int) [AuctionbIDderID],
	cast([Created] as DATETIME) [Created],
	cast([CreatedByUserID] as int) [CreatedByUserID],
	cast([AuctionID] as int) [AuctionID] 
From stg.[Auct_AuctionBidderSkyBox_FinalView]