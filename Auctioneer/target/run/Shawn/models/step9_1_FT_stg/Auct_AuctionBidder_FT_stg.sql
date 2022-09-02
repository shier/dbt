
  
  if object_id ('"stg"."Auct_AuctionBidder_FT_stg__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_AuctionBidder_FT_stg__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_AuctionBidder_FT_stg__dbt_tmp"','U') is not null
    begin
    drop table "stg"."Auct_AuctionBidder_FT_stg__dbt_tmp"
    end


   EXEC('create view stg.Auct_AuctionBidder_FT_stg__dbt_tmp_temp_view as
    

SELECT
    [AuctionBidderID],
    [AuctionID],
    [BidderID],
    [ShippingAddressID],
    [AuctionBidderNumber],
    [RegistrationDate],
    NULLIF([Comments], '''') as [Comments],
    [Created],
    [UpdateEventID],
    [BankAccountID],
    [Insurance],
    [DriverLicense],
    [DealerLicense],
    [TaxCertificate],
    [AuthBidLetter],
    [OwnershipLetter],
    [OtherLetter],
    [RockDoc],
    [InsuranceExpire] as [InsuranceExpireDate],
    [InsuranceID],
    [MethodOfPayment] as [PaymentMethod],
    [RegistrationFee],
    [SignedAgreement],
    [PacketAtWillCall] as [PackageAtWillCall],
    [CreatedByUserID],
    [SkyBoxPassCount],
    [BidLimit],
    [BidderStatusID],
    [CompleteStatusBIT],
    [BidderRequestID],
    [ContactPhoneID],
    [PaymentMethodID],
    [AddressID],
    [BidLimitEstimate],
    [TrackingNumber],
    [DocumentationBIT],
    [HoldPackageAtWillCall],
    [AuctionBidderSourceID],
    [RegisteredOnlineBIT],
    [ChargeCount]
    -- [AuctionBidderPackageStatusID],
    -- [PacketPickupDateTime] as [PackagePickupDateTime] -- not exist for those two columns on parquet file, mark 2022-08-31 by shawn
FROM [stg].[Auct_AuctionBidder_FinalView]
    ');

  CREATE TABLE "stg"."Auct_AuctionBidder_FT_stg__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_AuctionBidder_FT_stg__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."Auct_AuctionBidder_FT_stg__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_AuctionBidder_FT_stg__dbt_tmp_temp_view"
    end


