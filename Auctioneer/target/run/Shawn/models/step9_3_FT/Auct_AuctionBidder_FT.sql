
  
  if object_id ('"dbo"."Auct_AuctionBidder_FT__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_AuctionBidder_FT__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."Auct_AuctionBidder_FT__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."Auct_AuctionBidder_FT__dbt_tmp"
    end


   EXEC('create view dbo.Auct_AuctionBidder_FT__dbt_tmp_temp_view as
    

with updateData as (
    select 
        FTtmp.[AuctionBidder_Skey], 
        FTtmp.[Auction_Skey],
        FTtmp.[Bidder_Skey],
        FTstg.[AuctionBidderID],
        FTstg.[AuctionID],
        FTstg.[BidderID],
        FTstg.[ShippingAddressID],
        FTstg.[AuctionBidderNumber],
        FTstg.[RegistrationDate],
        FTstg.[Comments],
        FTstg.[Created],
        FTstg.[UpdateEventID],
        FTstg.[BankAccountID],
        FTstg.[Insurance],
        FTstg.[DriverLicense],
        FTstg.[DealerLicense],
        FTstg.[TaxCertificate],
        FTstg.[AuthBidLetter],
        FTstg.[OwnershipLetter],
        FTstg.[OtherLetter],
        FTstg.[RockDoc],
        FTstg.[InsuranceExpireDate],
        FTstg.[InsuranceID],
        FTstg.[PaymentMethod],
        FTstg.[RegistrationFee],
        FTstg.[SignedAgreement],
        FTstg.[PackageAtWillCall],
        FTstg.[CreatedByUserID],
        FTstg.[SkyBoxPassCount],
        FTstg.[BidLimit],
        FTstg.[BidderStatusID],
        FTstg.[CompleteStatusBIT],
        FTstg.[BidderRequestID],
        FTstg.[ContactPhoneID],
        FTstg.[PaymentMethodID],
        FTstg.[AddressID],
        FTstg.[BidLimitEstimate],
        FTstg.[TrackingNumber],
        FTstg.[DocumentationBIT],
        FTstg.[HoldPackageAtWillCall],
        FTstg.[AuctionBidderSourceID],
        FTstg.[RegisteredOnlineBIT],
        FTstg.[ChargeCount]
        -- FTstg.[AuctionBidderPackageStatusID],
        -- FTstg.[PackagePickupDateTime]
    from stg.Auct_AuctionBidder_FT_tmp as FTtmp 
    join stg.Auct_AuctionBidder_FT_stg as FTstg 
    on FTstg.AuctionBidderID=FTtmp.AuctionBidderID
),
insertData as (
    select 
        [AuctionBidder_Skey], 
        [Auction_Skey],
        [Bidder_Skey],
        [AuctionBidderID],
        [AuctionID],
        [BidderID],
        [ShippingAddressID],
        [AuctionBidderNumber],
        [RegistrationDate],
        [Comments],
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
        [InsuranceExpireDate],
        [InsuranceID],
        [PaymentMethod],
        [RegistrationFee],
        [SignedAgreement],
        [PackageAtWillCall],
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
        -- [PackagePickupDateTime]
    from stg.Auct_AuctionBidder_FT_tmp
    where AuctionBidderID not in (select  AuctionBidderID from stg.Auct_AuctionBidder_FT_stg)
)
SELECT
   	[AuctionBidder_Skey],
	[Auction_Skey],
	[Bidder_Skey],
	-- [Item_Skey],
	-- [AuctionBidderID],
	-- [AuctionID],
	-- [BidderID],
	-- [ShippingAddressID],
	[AuctionBidderNumber],
	[RegistrationDate],
	[Comments],
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
	[InsuranceExpireDate],
	[InsuranceID],
	[PaymentMethod],
	[RegistrationFee],
	[SignedAgreement],
	[PackageAtWillCall],
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
	-- [PackagePickupDateTime]
from updateData
union all

SELECT
  	[AuctionBidder_Skey],
	[Auction_Skey],
	[Bidder_Skey],
	-- [Item_Skey],
	-- [AuctionBidderID],
	-- [AuctionID],
	-- [BidderID],
	-- [ShippingAddressID],
	[AuctionBidderNumber],
	[RegistrationDate],
	[Comments],
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
	[InsuranceExpireDate],
	[InsuranceID],
	[PaymentMethod],
	[RegistrationFee],
	[SignedAgreement],
	[PackageAtWillCall],
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
	-- [PackagePickupDateTime]
from insertData
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


