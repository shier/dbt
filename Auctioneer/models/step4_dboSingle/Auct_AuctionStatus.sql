{{ config(materialized='table',schema='dbo')}}
Select
	cast([Active] as bit) [ACTIVE],
	cast([AuctionStatusID] as int) [AUCTIONSTATUSID],
	cast([Name] as nvarchar(4000)) [NAME] 
From stg.[Auct_AuctionStatus_FinalView]