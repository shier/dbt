create view "stg"."Auct_ProxiBidAuction_InterView__dbt_tmp" as
    
Select
	[PROXIBIDAUCTIONID] [ProxiBidAuctionID],
	[PROXIBIDID] [ProxiBidID],
	[AUCTIONEERAUCTIONID] [AuctioneerauctionID],
	cast([AUCTIONCATEGORY] as nvarchar(4000)) [AuctionCategory]
From stg.[Auct_ProxiBidAuction_Raw]
