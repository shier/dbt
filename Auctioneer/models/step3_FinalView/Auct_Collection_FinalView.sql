{{ config(materialized='view',schema='stg')}}
Select
	[CollectionID],[Name],[Description],[AuctionID],[Active] 
From stg.[Auct_Collection_Incr] 
Where [dbt_valid_to] is null