{{ config(materialized='table',schema='dbo')}}
Select
	cast([AuctionBidderCompleteStatusID] as int) [AuctionbiddercompleTestatusid],
	cast([Name] as nvarchar(4000)) [Name] 
From stg.[Auct_AuctionBidderCompleteStatus_FinalView]