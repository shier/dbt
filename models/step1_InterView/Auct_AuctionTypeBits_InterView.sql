{{ config(materialized='view',schema='stg')}}
Select
	[AUCTIONTYPEBIT] [AuctionTypeBit],
	cast([NAME] as nvarchar(4000)) [Name],
	[ACTIVE] [Active]
From stg.[Auct_AuctionTypeBits_Raw]
