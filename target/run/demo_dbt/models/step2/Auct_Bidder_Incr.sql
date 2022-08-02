
      
  
  if object_id ('"stg"."Auct_Bidder_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_Bidder_Incr_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_Bidder_Incr"','U') is not null
    begin
    drop table "stg"."Auct_Bidder_Incr"
    end


   EXEC('create view stg.Auct_Bidder_Incr_temp_view as
    
With hashData as (
		Select
			HASHBYTES(''MD5'', concat(Cast(BidLimit as varchar), Cast(BidderNumber as varchar), Cast(AnniversaryDate as varchar), Cast(Created as varchar), Cast(AddressID as varchar), Cast(ShippingAddressID as varchar), Cast(ContactPhoneID as varchar), Cast(BidderTypeID as varchar), Cast(BidderStatusID as varchar), Cast(CustomerAccountID as varchar), Cast(ApprovedBy as varchar), Cast(UpdateEventID as varchar), Cast(PaymentMethodID as varchar), Comments)) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_Bidder_Inter]
	)
Select * From hashData

    ');

  CREATE TABLE "stg"."Auct_Bidder_Incr"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_Bidder_Incr_temp_view)

   
  
  if object_id ('"stg"."Auct_Bidder_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_Bidder_Incr_temp_view"
    end



  