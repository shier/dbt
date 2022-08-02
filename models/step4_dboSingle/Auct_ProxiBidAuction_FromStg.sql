{{ config(materialized='table',schema='dbo')}}
Select
	cast([ProxiBidAuctionID] as int) [ProxiBidAuctionID],
	cast([ProxiBidID] as int) [ProxiBidID],
	cast([AuctioneerauctionID] as int) [AuctioneerauctionID],
	cast([AuctionCategory] as nvarchar(4000)) [AuctionCategory] 
From stg.[Auct_ProxiBidAuction_FinalView]