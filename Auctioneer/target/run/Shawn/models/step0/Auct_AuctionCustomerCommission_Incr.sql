
      
  
  if object_id ('"stg"."Auct_AuctionCustomerCommission_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_AuctionCustomerCommission_Incr_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_AuctionCustomerCommission_Incr"','U') is not null
    begin
    drop table "stg"."Auct_AuctionCustomerCommission_Incr"
    end


   EXEC('create view stg.Auct_AuctionCustomerCommission_Incr_temp_view as
    
With hashData as (
		Select
			HASHBYTES(''SHA2_256'', concat(Cast([SellerComission] as varchar), Cast([BuyerComission] as varchar), Cast([MinSellerCharge] as varchar), Cast([MinBuyerCharge] as varchar), Cast([AuctionID] as varchar), Cast([CustomerAccountID] as varchar), Cast([ItemTypeID] as varchar))) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_AuctionCustomerCommission_InterView]
	)
Select * From hashData

    ');

  CREATE TABLE "stg"."Auct_AuctionCustomerCommission_Incr"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_AuctionCustomerCommission_Incr_temp_view)

   
  
  if object_id ('"stg"."Auct_AuctionCustomerCommission_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_AuctionCustomerCommission_Incr_temp_view"
    end



  