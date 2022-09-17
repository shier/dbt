
  
  if object_id ('"dbo"."BC_BJAuctionCompany_Vendor_0972__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."BC_BJAuctionCompany_Vendor_0972__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."BC_BJAuctionCompany_Vendor_0972__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."BC_BJAuctionCompany_Vendor_0972__dbt_tmp"
    end


   EXEC('create view dbo.BC_BJAuctionCompany_Vendor_0972__dbt_tmp_temp_view as
    
Select
	cast([SearchName] as nvarchar(4000)) [SearchName],
	cast([Address2] as nvarchar(4000)) [Address2],
	cast([VendorPostingGroup] as nvarchar(4000)) [VendorPostingGroup],
	cast([TerritoryCode] as nvarchar(4000)) [TerritoryCode],
	cast([ShipmentMethodCode] as nvarchar(4000)) [ShipmentMethodCode],
	cast([Fin_ChargeTermsCode] as nvarchar(4000)) [Fin_ChargeTermsCode],
	cast([FaxNo_] as nvarchar(4000)) [FaxNo_],
	cast([Pay-toVendorNo_] as nvarchar(4000)) [Pay-toVendorNo_],
	cast([ShippingAgentCode] as nvarchar(4000)) [ShippingAgentCode],
	cast([PostCode] as nvarchar(4000)) [PostCode],
	cast([VATRegistrationNo_] as nvarchar(4000)) [VATRegistrationNo_],
	cast([CreditorNo_] as nvarchar(4000)) [CreditorNo_],
	cast([No_Series] as nvarchar(4000)) [No_Series],
	cast([LeadTimeCalculation] as nvarchar(4000)) [LeadTimeCalculation],
	cast([PrimaryContactNo_] as nvarchar(4000)) [PrimaryContactNo_],
	cast([CURPNo_] as nvarchar(4000)) [CURPNo_],
	cast([CurrencyId] as nvarchar(4000)) [CurrencyId],
	cast([DocumentSendingProfile] as nvarchar(4000)) [DocumentSendingProfile],
	cast([Over-ReceiptCode] as nvarchar(4000)) [Over-ReceiptCode],
	cast([$systemId] as nvarchar(4000)) [$systemId],
	cast([TaxLiable] as int) [TaxLiable],
	cast([ApplicationMethod] as int) [ApplicationMethod],
	cast([Blocked] as int) [Blocked],
	cast([TaxIdentificationType] as int) [TaxIdentificationType],
	cast([CheckDateFormat] as int) [CheckDateFormat],
	cast([BlockPaymentTolerance] as int) [BlockPaymentTolerance],
	cast([PriceCalculationMethod] as int) [PriceCalculationMethod],
	cast([PrivacyBlocked] as int) [PrivacyBlocked],
	cast([$systemModifiedAt] as datetime) [$systemModifiedAt],
	cast([LastDateModified] as datetime) [LastDateModified],
	cast([Prepayment_] as numeric(19,4)) [Prepayment_],
	cast([$systemCreatedBy] as nvarchar(4000)) [$systemCreatedBy],
	cast([Name] as nvarchar(4000)) [Name],
	cast([PhoneNo_] as nvarchar(4000)) [PhoneNo_],
	cast([City] as nvarchar(4000)) [City],
	cast([Address] as nvarchar(4000)) [Address],
	cast([GlobalDimension1Code] as nvarchar(4000)) [GlobalDimension1Code],
	cast([OurAccountNo_] as nvarchar(4000)) [OurAccountNo_],
	cast([LanguageCode] as nvarchar(4000)) [LanguageCode],
	cast([InvoiceDisc_Code] as nvarchar(4000)) [InvoiceDisc_Code],
	cast([E-Mail] as nvarchar(4000)) [E-Mail],
	cast([VATBus_PostingGroup] as nvarchar(4000)) [VATBus_PostingGroup],
	cast([ResponsibilityCenter] as nvarchar(4000)) [ResponsibilityCenter],
	cast([PreferredBankAccountCode] as nvarchar(4000)) [PreferredBankAccountCode],
	cast([RFCNo_] as nvarchar(4000)) [RFCNo_],
	cast([FederalIDNo_] as nvarchar(4000)) [FederalIDNo_],
	cast([BaseCalendarCode] as nvarchar(4000)) [BaseCalendarCode],
	cast([Id] as nvarchar(4000)) [Id],
	cast([Image] as nvarchar(4000)) [Image],
	cast([StateInscription] as nvarchar(4000)) [StateInscription],
	cast([MobilePhoneNo_] as nvarchar(4000)) [MobilePhoneNo_],
	cast([PaymentTermsId] as nvarchar(4000)) [PaymentTermsId],
	cast([PartnerType] as int) [PartnerType],
	cast([LastModifiedDateTime] as datetime) [LastModifiedDateTime],
	cast([Picture] as varbinary(8000)) [Picture],
	cast([$systemModifiedBy] as nvarchar(4000)) [$systemModifiedBy],
	cast([Contact] as nvarchar(4000)) [Contact],
	cast([Name2] as nvarchar(4000)) [Name2],
	cast([GlobalDimension2Code] as nvarchar(4000)) [GlobalDimension2Code],
	cast([TelexNo_] as nvarchar(4000)) [TelexNo_],
	cast([PurchaserCode] as nvarchar(4000)) [PurchaserCode],
	cast([PaymentTermsCode] as nvarchar(4000)) [PaymentTermsCode],
	cast([CurrencyCode] as nvarchar(4000)) [CurrencyCode],
	cast([PaymentMethodCode] as nvarchar(4000)) [PaymentMethodCode],
	cast([Country_RegionCode] as nvarchar(4000)) [Country_RegionCode],
	cast([County] as nvarchar(4000)) [County],
	cast([Gen_Bus_PostingGroup] as nvarchar(4000)) [Gen_Bus_PostingGroup],
	cast([TelexAnswerBack] as nvarchar(4000)) [TelexAnswerBack],
	cast([ICPartnerCode] as nvarchar(4000)) [ICPartnerCode],
	cast([HomePage] as nvarchar(4000)) [HomePage],
	cast([LocationCode] as nvarchar(4000)) [LocationCode],
	cast([CashFlowPaymentTermsCode] as nvarchar(4000)) [CashFlowPaymentTermsCode],
	cast([IRS1099Code] as nvarchar(4000)) [IRS1099Code],
	cast([UPSZone] as nvarchar(4000)) [UPSZone],
	cast([GLN] as nvarchar(4000)) [GLN],
	cast([EORINumber] as nvarchar(4000)) [EORINumber],
	cast([PaymentMethodId] as nvarchar(4000)) [PaymentMethodId],
	cast([PricesIncludingVAT] as int) [PricesIncludingVAT],
	cast([Priority] as int) [Priority],
	cast([StatisticsGroup] as int) [StatisticsGroup],
	cast([BankCommunication] as int) [BankCommunication],
	cast([DIOT-TypeofOperation] as int) [DIOT-TypeofOperation],
	cast([ValidateEUVatReg_No_] as int) [ValidateEUVatReg_No_],
	cast([FATCAfilingrequirement] as int) [FATCAfilingrequirement],
	cast([DisableSearchbyName] as int) [DisableSearchbyName],
	cast([$systemCreatedAt] as datetime) [$systemCreatedAt],
	cast([timestamp] as varbinary(8000)) [timestamp],
	cast([BudgetedAmount] as numeric(19,4)) [BudgetedAmount],
	cast([No_] as nvarchar(4000)) [No_],
	cast([TaxAreaCode] as nvarchar(4000)) [TaxAreaCode],
	cast([CheckDateSeparator] as int) [CheckDateSeparator] 
From stg.[BC_BJAuctionCompany_Vendor_0972_FinalView]
    ');

  CREATE TABLE "dbo"."BC_BJAuctionCompany_Vendor_0972__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.BC_BJAuctionCompany_Vendor_0972__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."BC_BJAuctionCompany_Vendor_0972__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."BC_BJAuctionCompany_Vendor_0972__dbt_tmp_temp_view"
    end


