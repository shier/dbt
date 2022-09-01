
  
  if object_id ('"dbo"."Auct_AuctionBidder_FT__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_AuctionBidder_FT__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."Auct_AuctionBidder_FT__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."Auct_AuctionBidder_FT__dbt_tmp"
    end


   EXEC('create view dbo.Auct_AuctionBidder_FT__dbt_tmp_temp_view as
    

SELECT
[AuctionBidderID],
[HoldPackageatWillCall],
[AuctionID],
[BidderID],
[AuctionBidderNumber],
[RegistrationDate],
NULLIF([Comments] ,'''') as Comments,
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
[InsuranceExpire],
[InsuranceID],
[MethODOfPayment],
[RegistrationFee],
[SignedAgreement],
[PacketatWillCall],
[CreatedByUserID],
[SkyBoxPassCount],
[BidLimit],
[BidderStatusID],
[CompleteStatusBit],
[BidderRequestID],
[ShippingAddressID],
[ContactPhoneID],
[PaymentMethodID],
[AddressID],
[BidLimiTestimate],
[TrackingNumber],
[DocumentationBit],
[AuctionBidderSourceID],
[RegisteredOnlineBit],
[ChargeCount] 
FROM [stg].[Auct_AuctionBidder_FinalView]
    ');

  CREATE TABLE "dbo"."Auct_AuctionBidder_FT__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.Auct_AuctionBidder_FT__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."Auct_AuctionBidder_FT__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_AuctionBidder_FT__dbt_tmp_temp_view"
    end


