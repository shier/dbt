{{ config(materialized='view',schema='stg')}}
Select
	[AuctionStatusID],[Active],[Name] 
From stg.[Auct_AuctionStatus_Incr] 
Where [dbt_valid_to] is null