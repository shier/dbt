
      
  
  if object_id ('"stg"."Auct_Sale_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_Sale_Incr_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_Sale_Incr"','U') is not null
    begin
    drop table "stg"."Auct_Sale_Incr"
    end


   EXEC('create view stg.Auct_Sale_Incr_temp_view as
    
With hashData as (
		Select
			HASHBYTES(''MD5'', concat(Cast(HoldWire as varchar), Cast(Price as varchar), Cast(CountyTaxDollars as varchar), Cast(CountyTaxRate as varchar), Cast(CityTaxDollars as varchar), Cast(CityTaxRate as varchar), Cast(SteveCommDollars as varchar), Cast(SteveCommPerc as varchar), Cast(BuyerCommPerc as varchar), Cast(BuyerCommDollars as varchar), Cast(CommPerc as varchar), Cast(CommDollars as varchar), Cast(StateTaxDollars as varchar), Cast(StateTaxRate as varchar), Cast(AsSiterCommDollars as varchar), Cast(AsSiterCommPerc as varchar), ShipDateVerified, Comments, BillofLading, BillofLadingText, BMA, Navision, TaxExemptCode, ArBitrated, AdjustmentReason, AdjustedByUserName, CarrierName, Cast(ShipDate as varchar), Cast(AdjustmentDate as varchar), Cast(Created as varchar), Cast(BlockSaleID as varchar), Cast(CarrierID as varchar), Cast(BuyerCustomerAccountID as varchar), Cast(SellerCustomerAccountID as varchar), Cast(ShiptoAddressID as varchar), Cast(ShiptoContactID as varchar), Cast(UpdateEventID as varchar), Cast(Legacy as varchar), Cast(BuyerdealerID as varchar), Cast(SellerAddressID as varchar), Cast(SellerDealerID as varchar), Cast(AlternateSaleType as varchar), Cast(SaleStatusID as varchar), Cast(AuctionBidderID as varchar))) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_Sale_Inter]
	)
Select * From hashData

    ');

  CREATE TABLE "stg"."Auct_Sale_Incr"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_Sale_Incr_temp_view)

   
  
  if object_id ('"stg"."Auct_Sale_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_Sale_Incr_temp_view"
    end



  