
  
  if object_id ('"stg"."Auct_AuctionBidder_Final__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_AuctionBidder_Final__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_AuctionBidder_Final__dbt_tmp"','U') is not null
    begin
    drop table "stg"."Auct_AuctionBidder_Final__dbt_tmp"
    end


   EXEC('create view stg.Auct_AuctionBidder_Final__dbt_tmp_temp_view as
    
Select
	[AuctionBidderID],[HoldPackageatWillCall],[AuctionID],[BidderID],[AuctionBidderNumber],[RegistrationDate],[Comments],[Created],[UpdateEventID],[BankAccountID],[Insurance],[DriverLicense],[DealerLicense],[TaxCertificate],[AuthBidLetter],[OwnershipLetter],[OtherLetter],[RockDoc],[InsuranceExpire],[InsuranceID],[MethODOfPayment],[RegistrationFee],[SignedAgreement],[PacketatWillCall],[CreatedByUserID],[SkyBoxPassCount],[BidLimit],[BidderStatusID],[CompleteStatusBit],[BidderRequestID],[ShippingAddressID],[ContactPhoneID],[PaymentMethodID],[AddressID],[BidLimiTestimate],[TrackingNumber],[DocumentationBit],[AuctionBidderSourceID],[RegisteredOnlineBit],[ChargeCount],[AuctionBidderPackageStatusID],[PacketPickUpdateTime] 
From stg.[Auct_AuctionBidder_Incr] 
Where [dbt_valid_to] is null
    ');

  CREATE TABLE "stg"."Auct_AuctionBidder_Final__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_AuctionBidder_Final__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."Auct_AuctionBidder_Final__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_AuctionBidder_Final__dbt_tmp_temp_view"
    end


