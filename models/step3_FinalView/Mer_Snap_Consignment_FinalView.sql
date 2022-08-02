{{ config(materialized='view',schema='stg')}}
Select
	[ConsignmentID],[AuctionID],[ReviewStateID],[ReviewStateDate],[ModifiedDateTime],[ReviewStateName] 
From stg.[Mer_Snap_Consignment_Incr] 
Where [dbt_valid_to] is null