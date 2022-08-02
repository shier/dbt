
      
  
  if object_id ('"stg"."Auct_SaleHistory_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_SaleHistory_Incr_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_SaleHistory_Incr"','U') is not null
    begin
    drop table "stg"."Auct_SaleHistory_Incr"
    end


   EXEC('create view stg.Auct_SaleHistory_Incr_temp_view as
    
With hashData as (
		Select
			HASHBYTES(''MD5'', concat(BMA, Navision, ShipDateVerified, Comments, BillofLading, BillofLadingText, Cast(Created as varchar), Cast(ShipDate as varchar), Cast(ShiptoContactID as varchar), Cast(UpdateEventID as varchar), Cast(Legacy as varchar), Cast(BuyerdealerID as varchar), Cast(SellerAddressID as varchar), Cast(SellerDealerID as varchar), Cast(BlockSaleID as varchar), Cast(CarrierID as varchar), Cast(BuyerCustomerAccountID as varchar), Cast(SellerCustomerAccountID as varchar), Cast(ShiptoAddressID as varchar))) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_SaleHistory_Inter]
	)
Select * From hashData

    ');

  CREATE TABLE "stg"."Auct_SaleHistory_Incr"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_SaleHistory_Incr_temp_view)

   
  
  if object_id ('"stg"."Auct_SaleHistory_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_SaleHistory_Incr_temp_view"
    end



  