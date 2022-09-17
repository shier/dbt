{{ config(materialized='table',schema='dbo')}}
Select
	cast([AuctionBidderCompleteStatusID] as int) [AUCTIONBIDDERCOMPLETESTATUSID],
	cast([Name] as nvarchar(4000)) [NAME] 
From stg.[Auct_AuctionBidderCompleteStatus_FinalView]