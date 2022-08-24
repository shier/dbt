{{ config(materialized='view',schema='stg')}}
Select
	[AuctionTypeBit],[Name],[Active] 
From stg.[Auct_AuctionTypeBits_Incr] 
Where [dbt_valid_to] is null