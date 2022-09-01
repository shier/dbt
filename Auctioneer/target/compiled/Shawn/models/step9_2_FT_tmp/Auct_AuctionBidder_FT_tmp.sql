

WITH Auct_AuctionBidder_CTE AS (
	SELECT
        cxaucbiddm.[AuctionBidder_Skey], 
		aucdm.[Auction_Skey],
		biddm.[Bidder_Skey],
		-- STRING_AGG(COALESCE(car.[Item_Skey], automobilia.[Item_Skey]),  ',') AS [Item_Skey], 
		-- car.[Item_Skey] AS [Item_Skey_car],
		-- automobilia.[Item_Skey] AS [Item_Skey_automobilia],
		aucbidft.[AuctionBidderID],
		aucbidft.[AuctionID],
		aucbidft.[BidderID],
		aucbidft.[ShippingAddressID],
		aucbidft.[AuctionBidderNumber],
		aucbidft.[RegistrationDate],
		aucbidft.[Comments],
		aucbidft.[Created],
		aucbidft.[UpdateEventID],
		aucbidft.[BankAccountID],
		aucbidft.[Insurance],
		aucbidft.[DriverLicense],
		aucbidft.[DealerLicense],
		aucbidft.[TaxCertificate],
		aucbidft.[AuthBidLetter],
		aucbidft.[OwnershipLetter],
		aucbidft.[OtherLetter],
		aucbidft.[RockDoc],
		aucbidft.[InsuranceExpireDate],
		aucbidft.[InsuranceID],
		aucbidft.[PaymentMethod],
		aucbidft.[RegistrationFee],
		aucbidft.[SignedAgreement],
		aucbidft.[PackageAtWillCall],
		aucbidft.[CreatedByUserID],
		aucbidft.[SkyBoxPassCount],
		aucbidft.[BidLimit],
		aucbidft.[BidderStatusID],
		aucbidft.[CompleteStatusBIT],
		aucbidft.[BidderRequestID],
		aucbidft.[ContactPhoneID],
		aucbidft.[PaymentMethodID],
		aucbidft.[AddressID],
		aucbidft.[BidLimitEstimate],
		aucbidft.[TrackingNumber],
		aucbidft.[DocumentationBIT],
		aucbidft.[HoldPackageAtWillCall],
		aucbidft.[AuctionBidderSourceID],
		aucbidft.[RegisteredOnlineBIT],
		aucbidft.[ChargeCount]
		-- aucbidft.[AuctionBidderPackageStatusID],
		-- aucbidft.[PackagePickupDateTime]
	FROM [stg].[Auct_AuctionBidder_FT_stg] aucbidft
	-- FOR [Auction_Skey]
	LEFT JOIN [stg].[Auct_Auction_DM_stg] aucdm 
		ON aucbidft.[AuctionID]=aucdm.[AuctionID]
	-- FOR [Bidder_Skey]
	LEFT JOIN [stg].[Auct_Bidder_DM_stg] biddm 
		ON aucbidft.[BidderID]=biddm.[BidderID]
	-- FOR [AuctionBidder_Skey]
	LEFT JOIN [dbo].[Auct_Customer_AuctionBidder_DM] cxaucbiddm
		ON aucbidft.[AuctionBidderID]=cxaucbiddm.[AuctionBidderID]
	
)

SELECT 
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
FROM Auct_AuctionBidder_CTE