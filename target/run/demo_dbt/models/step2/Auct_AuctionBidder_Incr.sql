
      
  
  if object_id ('"stg"."Auct_AuctionBidder_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_AuctionBidder_Incr_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_AuctionBidder_Incr"','U') is not null
    begin
    drop table "stg"."Auct_AuctionBidder_Incr"
    end


   EXEC('create view stg.Auct_AuctionBidder_Incr_temp_view as
    
With hashData as (
		Select
			HASHBYTES(''MD5'', concat(SignedAgreement, PacketatWillCall, BidderRequestID, TrackingNumber, AuthBidLetter, OwnershipLetter, OtherLetter, RockDoc, MethODOfPayment, RegistrationFee, Comments, Insurance, DriverLicense, DealerLicense, TaxCertificate, Cast(HoldPackageatWillCall as varchar), Cast(RegistrationDate as varchar), Cast(Created as varchar), Cast(InsuranceExpire as varchar), Cast(PacketPickUpdateTime as varchar), Cast(AuctionID as varchar), Cast(BidderID as varchar), Cast(AuctionBidderNumber as varchar), Cast(UpdateEventID as varchar), Cast(DocumentationBit as varchar), Cast(AuctionBidderSourceID as varchar), Cast(RegisteredOnlineBit as varchar), Cast(ChargeCount as varchar), Cast(AuctionBidderPackageStatusID as varchar), Cast(CompleteStatusBit as varchar), Cast(ShippingAddressID as varchar), Cast(ContactPhoneID as varchar), Cast(PaymentMethodID as varchar), Cast(AddressID as varchar), Cast(BidLimiTestimate as varchar), Cast(BankAccountID as varchar), Cast(InsuranceID as varchar), Cast(CreatedByUserID as varchar), Cast(SkyBoxPassCount as varchar), Cast(BidLimit as varchar), Cast(BidderStatusID as varchar))) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_AuctionBidder_Inter]
	)
Select * From hashData

    ');

  CREATE TABLE "stg"."Auct_AuctionBidder_Incr"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_AuctionBidder_Incr_temp_view)

   
  
  if object_id ('"stg"."Auct_AuctionBidder_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_AuctionBidder_Incr_temp_view"
    end



  