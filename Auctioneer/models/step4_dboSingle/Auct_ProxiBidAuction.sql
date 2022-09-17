{{ config(materialized='table',schema='dbo')}}
Select
	cast([ProxiBidAuctionID] as int) [PROXIBIDAUCTIONID],
	cast([ProxiBidID] as int) [PROXIBIDID],
	cast([AuctioneerauctionID] as int) [AUCTIONEERAUCTIONID],
	cast([AuctionCategory] as nvarchar(4000)) [AUCTIONCATEGORY] 
From stg.[Auct_ProxiBidAuction_FinalView]