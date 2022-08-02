{{ config(materialized='view',schema='stg')}}
Select
	[FeeTypeID],[Active],[AuctionID],[CreatedByUserID],[ItemTypeID] 
From stg.[Auct_ChargeatSaleAuctionFeeType_Incr] 
Where [dbt_valid_to] is null