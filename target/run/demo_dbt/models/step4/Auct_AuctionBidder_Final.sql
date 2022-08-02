
  
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
	[AuctionBidderID],[SignedAgreement],[PacketatWillCall],[BidderRequestID],[TrackingNumber],[AuthBidLetter],[OwnershipLetter],[OtherLetter],[RockDoc],[MethODOfPayment],[RegistrationFee],[Comments],[Insurance],[DriverLicense],[DealerLicense],[TaxCertificate],[HoldPackageatWillCall],[RegistrationDate],[Created],[InsuranceExpire],[PacketPickUpdateTime],[AuctionID],[BidderID],[AuctionBidderNumber],[UpdateEventID],[DocumentationBit],[AuctionBidderSourceID],[RegisteredOnlineBit],[ChargeCount],[AuctionBidderPackageStatusID],[CompleteStatusBit],[ShippingAddressID],[ContactPhoneID],[PaymentMethodID],[AddressID],[BidLimiTestimate],[BankAccountID],[InsuranceID],[CreatedByUserID],[SkyBoxPassCount],[BidLimit],[BidderStatusID] 
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


