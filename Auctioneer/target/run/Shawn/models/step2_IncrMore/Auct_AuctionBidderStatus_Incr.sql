
      
  
  if object_id ('"stg"."Auct_AuctionBidderStatus_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_AuctionBidderStatus_Incr_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_AuctionBidderStatus_Incr"','U') is not null
    begin
    drop table "stg"."Auct_AuctionBidderStatus_Incr"
    end


   EXEC('create view stg.Auct_AuctionBidderStatus_Incr_temp_view as
    
With hashData as (
		Select
			HASHBYTES(''SHA2_256'', concat(Cast([CommissionPercentage] as varchar), Cast([AutomobiliaCommissionPercentage] as varchar), Cast([AuctionID] as varchar), Cast([BidderStatusID] as varchar), Cast([FeeID] as varchar), Cast([RangeStart] as varchar), Cast([RangeEnd] as varchar))) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_AuctionBidderStatus_InterView]
	)
Select * From hashData

    ');

  CREATE TABLE "stg"."Auct_AuctionBidderStatus_Incr"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_AuctionBidderStatus_Incr_temp_view)

   
  
  if object_id ('"stg"."Auct_AuctionBidderStatus_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_AuctionBidderStatus_Incr_temp_view"
    end



  