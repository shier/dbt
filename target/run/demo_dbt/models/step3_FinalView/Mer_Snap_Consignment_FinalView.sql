create view "stg"."Mer_Snap_Consignment_FinalView__dbt_tmp" as
    
Select
	[ConsignmentID],[AuctionID],[ReviewStateID],[ReviewStateDate],[ModifiedDateTime],[ReviewStateName] 
From stg.[Mer_Snap_Consignment_Incr] 
Where [dbt_valid_to] is null
