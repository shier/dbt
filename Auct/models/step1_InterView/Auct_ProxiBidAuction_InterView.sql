{{ config(materialized='view',schema='stg')}}
Select
	[PROXIBIDAUCTIONID] [ProxiBidAuctionID],
	[PROXIBIDID] [ProxiBidID],
	[AUCTIONEERAUCTIONID] [AuctioneerauctionID],
	cast([AUCTIONCATEGORY] as nvarchar(4000)) [AuctionCategory]
From stg.[Auct_ProxiBidAuction_Raw]
