{{ config(materialized='view',schema='stg')}}
Select
	[AUCTIONSTATUSID] [AuctionStatusID],
	[ACTIVE] [Active],
	cast([NAME] as nvarchar(4000)) [Name]
From stg.[Auct_AuctionStatus_Raw]
