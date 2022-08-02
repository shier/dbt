
  
  if object_id ('"stg"."Auct_AuctionBidder_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_AuctionBidder_Inter__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_AuctionBidder_Inter__dbt_tmp"','U') is not null
    begin
    drop table "stg"."Auct_AuctionBidder_Inter__dbt_tmp"
    end


   EXEC('create view stg.Auct_AuctionBidder_Inter__dbt_tmp_temp_view as
    
Select
	cast(SIGNEDAGREEMENT as nvarchar(4000)) SignedAgreement,
	cast(PACKETATWILLCALL as nvarchar(4000)) PacketatWillCall,
	cast(BIDDERREQUESTID as nvarchar(4000)) BidderRequestID,
	cast(TRACKINGNUMBER as nvarchar(4000)) TrackingNumber,
	cast(AUTHBIDLETTER as nvarchar(4000)) AuthBidLetter,
	cast(OWNERSHIPLETTER as nvarchar(4000)) OwnershipLetter,
	cast(OTHERLETTER as nvarchar(4000)) OtherLetter,
	cast(ROCKDOC as nvarchar(4000)) RockDoc,
	cast(METHODOFPAYMENT as nvarchar(4000)) MethODOfPayment,
	cast(REGISTRATIONFEE as nvarchar(4000)) RegistrationFee,
	cast(COMMENTS as nvarchar(4000)) Comments,
	cast(INSURANCE as nvarchar(4000)) Insurance,
	cast(DRIVERLICENSE as nvarchar(4000)) DriverLicense,
	cast(DEALERLICENSE as nvarchar(4000)) DealerLicense,
	cast(TAXCERTIFICATE as nvarchar(4000)) TaxCertificate,
	HOLDPACKAGEATWILLCALL HoldPackageatWillCall,
	REGISTRATIONDATE RegistrationDate,
	CREATED Created,
	INSURANCEEXPIRE InsuranceExpire,
	PACKETPICKUPDATETIME PacketPickUpdateTime,
	AUCTIONBIDDERID AuctionBidderID,
	AUCTIONID AuctionID,
	BIDDERID BidderID,
	AUCTIONBIDDERNUMBER AuctionBidderNumber,
	UPDATEEVENTID UpdateEventID,
	DOCUMENTATIONBIT DocumentationBit,
	AUCTIONBIDDERSOURCEID AuctionBidderSourceID,
	REGISTEREDONLINEBIT RegisteredOnlineBit,
	CHARGECOUNT ChargeCount,
	AuctionBidderPackageStatusId AuctionBidderPackageStatusID,
	COMPLETESTATUSBIT CompleteStatusBit,
	SHIPPINGADDRESSID ShippingAddressID,
	CONTACTPHONEID ContactPhoneID,
	PAYMENTMETHODID PaymentMethodID,
	ADDRESSID AddressID,
	BIDLIMITESTIMATE BidLimiTestimate,
	BANKACCOUNTID BankAccountID,
	INSURANCEID InsuranceID,
	CREATEDBYUSERID CreatedByUserID,
	SKYBOXPASSCOUNT SkyBoxPassCount,
	BIDLIMIT BidLimit,
	BIDDERSTATUSID BidderStatusID
From Auct_AuctionBidder_Raw
    ');

  CREATE TABLE "stg"."Auct_AuctionBidder_Inter__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_AuctionBidder_Inter__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."Auct_AuctionBidder_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_AuctionBidder_Inter__dbt_tmp_temp_view"
    end


