create view "stg"."Auct_AuctionBidder_InterView__dbt_tmp" as
    
Select
	[AUCTIONBIDDERID] [AuctionBidderID],
	[HOLDPACKAGEATWILLCALL] [HoldPackageatWillCall],
	[AUCTIONID] [AuctionID],
	[BIDDERID] [BidderID],
	[AUCTIONBIDDERNUMBER] [AuctionBidderNumber],
	[REGISTRATIONDATE] [RegistrationDate],
	cast([COMMENTS] as nvarchar(4000)) [Comments],
	[CREATED] [Created],
	[UPDATEEVENTID] [UpdateEventID],
	[BANKACCOUNTID] [BankAccountID],
	cast([INSURANCE] as nvarchar(4000)) [Insurance],
	cast([DRIVERLICENSE] as nvarchar(4000)) [DriverLicense],
	cast([DEALERLICENSE] as nvarchar(4000)) [DealerLicense],
	cast([TAXCERTIFICATE] as nvarchar(4000)) [TaxCertificate],
	cast([AUTHBIDLETTER] as nvarchar(4000)) [AuthBidLetter],
	cast([OWNERSHIPLETTER] as nvarchar(4000)) [OwnershipLetter],
	cast([OTHERLETTER] as nvarchar(4000)) [OtherLetter],
	cast([ROCKDOC] as nvarchar(4000)) [RockDoc],
	[INSURANCEEXPIRE] [InsuranceExpire],
	[INSURANCEID] [InsuranceID],
	cast([METHODOFPAYMENT] as nvarchar(4000)) [MethODOfPayment],
	cast([REGISTRATIONFEE] as nvarchar(4000)) [RegistrationFee],
	cast([SIGNEDAGREEMENT] as nvarchar(4000)) [SignedAgreement],
	cast([PACKETATWILLCALL] as nvarchar(4000)) [PacketatWillCall],
	[CREATEDBYUSERID] [CreatedByUserID],
	[SKYBOXPASSCOUNT] [SkyBoxPassCount],
	[BIDLIMIT] [BidLimit],
	[BIDDERSTATUSID] [BidderStatusID],
	[COMPLETESTATUSBIT] [CompleteStatusBit],
	cast([BIDDERREQUESTID] as nvarchar(4000)) [BidderRequestID],
	[SHIPPINGADDRESSID] [ShippingAddressID],
	[CONTACTPHONEID] [ContactPhoneID],
	[PAYMENTMETHODID] [PaymentMethodID],
	[ADDRESSID] [AddressID],
	[BIDLIMITESTIMATE] [BidLimiTestimate],
	cast([TRACKINGNUMBER] as nvarchar(4000)) [TrackingNumber],
	[DOCUMENTATIONBIT] [DocumentationBit],
	[AUCTIONBIDDERSOURCEID] [AuctionBidderSourceID],
	[REGISTEREDONLINEBIT] [RegisteredOnlineBit],
	[CHARGECOUNT] [ChargeCount]
From stg.[Auct_AuctionBidder_Raw]
