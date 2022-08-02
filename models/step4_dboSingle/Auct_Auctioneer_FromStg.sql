{{ config(materialized='table',schema='dbo')}}
Select
	cast([AuctioneerID] as int) [AuctioneerID],
	cast([Active] as bit) [Active],
	cast([ContactID] as int) [ContactID],
	cast([Created] as datetime) [Created],
	cast([UpdateEventID] as int) [UpdateEventID] 
From stg.[Auct_Auctioneer_FinalView]