{{ config(materialized='view',schema='stg')}}
Select
	[ProxiBidAuctionID],[ProxiBidID],[AuctioneerauctionID],[AuctionCategory] 
From stg.[Auct_ProxiBidAuction_Incr] 
Where [dbt_valid_to] is null