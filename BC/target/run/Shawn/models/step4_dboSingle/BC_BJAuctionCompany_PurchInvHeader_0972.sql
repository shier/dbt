
  
  if object_id ('"dbo"."BC_BJAuctionCompany_PurchInvHeader_0972__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."BC_BJAuctionCompany_PurchInvHeader_0972__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."BC_BJAuctionCompany_PurchInvHeader_0972__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."BC_BJAuctionCompany_PurchInvHeader_0972__dbt_tmp"
    end


   EXEC('create view dbo.BC_BJAuctionCompany_PurchInvHeader_0972__dbt_tmp_temp_view as
    
Select
	cast([$systemId] as nvarchar(4000)) [$systemId],
	cast([Pay-toName2] as nvarchar(4000)) [Pay-toName2],
	cast([Pay-toVendorNo_] as nvarchar(4000)) [Pay-toVendorNo_],
	cast([No_] as nvarchar(4000)) [No_],
	cast([Ship-toCode] as nvarchar(4000)) [Ship-toCode],
	cast([Ship-toAddress] as nvarchar(4000)) [Ship-toAddress],
	cast([VendorPostingGroup] as nvarchar(4000)) [VendorPostingGroup],
	cast([VATRegistrationNo_] as nvarchar(4000)) [VATRegistrationNo_],
	cast([VendorOrderNo_] as nvarchar(4000)) [VendorOrderNo_],
	cast([Applies-toDoc_No_] as nvarchar(4000)) [Applies-toDoc_No_],
	cast([ReasonCode] as nvarchar(4000)) [ReasonCode],
	cast([Buy-fromContact] as nvarchar(4000)) [Buy-fromContact],
	cast([Buy-fromCountry_RegionCode] as nvarchar(4000)) [Buy-fromCountry_RegionCode],
	cast([Buy-fromPostCode] as nvarchar(4000)) [Buy-fromPostCode],
	cast([Pay-toCounty] as nvarchar(4000)) [Pay-toCounty],
	cast([Area] as nvarchar(4000)) [Area],
	cast([Ship-toCounty] as nvarchar(4000)) [Ship-toCounty],
	cast([PaymentMethodCode] as nvarchar(4000)) [PaymentMethodCode],
	cast([VATBus_PostingGroup] as nvarchar(4000)) [VATBus_PostingGroup],
	cast([CampaignNo_] as nvarchar(4000)) [CampaignNo_],
	cast([CreditorNo_] as nvarchar(4000)) [CreditorNo_],
	cast([STETransactionID] as nvarchar(4000)) [STETransactionID],
	cast([Ship-toUPSZone] as nvarchar(4000)) [Ship-toUPSZone],
	cast([PriceCalculationMethod] as int) [PriceCalculationMethod],
	cast([DimensionSetID] as int) [DimensionSetID],
	cast([TaxLiable] as int) [TaxLiable],
	cast([Bal_AccountType] as int) [Bal_AccountType],
	cast([PricesIncludingVAT] as int) [PricesIncludingVAT],
	cast([ExpectedReceiptDate] as datetime) [ExpectedReceiptDate],
	cast([OrderDate] as datetime) [OrderDate],
	cast([$systemCreatedAt] as datetime) [$systemCreatedAt],
	cast([PaymentDiscount_] as numeric(19,4)) [PaymentDiscount_],
	cast([$systemCreatedBy] as nvarchar(4000)) [$systemCreatedBy],
	cast([Pay-toAddress] as nvarchar(4000)) [Pay-toAddress],
	cast([Pay-toName] as nvarchar(4000)) [Pay-toName],
	cast([Ship-toName] as nvarchar(4000)) [Ship-toName],
	cast([YourReference] as nvarchar(4000)) [YourReference],
	cast([Pay-toCity] as nvarchar(4000)) [Pay-toCity],
	cast([PostingDescription] as nvarchar(4000)) [PostingDescription],
	cast([Ship-toCity] as nvarchar(4000)) [Ship-toCity],
	cast([ShortcutDimension1Code] as nvarchar(4000)) [ShortcutDimension1Code],
	cast([ShipmentMethodCode] as nvarchar(4000)) [ShipmentMethodCode],
	cast([OnHold] as nvarchar(4000)) [OnHold],
	cast([PurchaserCode] as nvarchar(4000)) [PurchaserCode],
	cast([InvoiceDisc_Code] as nvarchar(4000)) [InvoiceDisc_Code],
	cast([Sell-toCustomerNo_] as nvarchar(4000)) [Sell-toCustomerNo_],
	cast([Bal_AccountNo_] as nvarchar(4000)) [Bal_AccountNo_],
	cast([Buy-fromVendorName] as nvarchar(4000)) [Buy-fromVendorName],
	cast([TransportMethod] as nvarchar(4000)) [TransportMethod],
	cast([Pay-toPostCode] as nvarchar(4000)) [Pay-toPostCode],
	cast([Buy-fromCity] as nvarchar(4000)) [Buy-fromCity],
	cast([Buy-fromAddress] as nvarchar(4000)) [Buy-fromAddress],
	cast([Ship-toPostCode] as nvarchar(4000)) [Ship-toPostCode],
	cast([Buy-fromCounty] as nvarchar(4000)) [Buy-fromCounty],
	cast([EntryPoint] as nvarchar(4000)) [EntryPoint],
	cast([Ship-toCountry_RegionCode] as nvarchar(4000)) [Ship-toCountry_RegionCode],
	cast([UserID] as nvarchar(4000)) [UserID],
	cast([OrderNo_Series] as nvarchar(4000)) [OrderNo_Series],
	cast([Pre-AssignedNo_Series] as nvarchar(4000)) [Pre-AssignedNo_Series],
	cast([QuoteNo_] as nvarchar(4000)) [QuoteNo_],
	cast([PrepaymentNo_Series] as nvarchar(4000)) [PrepaymentNo_Series],
	cast([TaxAreaCode] as nvarchar(4000)) [TaxAreaCode],
	cast([ResponsibilityCenter] as nvarchar(4000)) [ResponsibilityCenter],
	cast([TaxExemptionNo_] as nvarchar(4000)) [TaxExemptionNo_],
	cast([Id] as nvarchar(4000)) [Id],
	cast([DIOT-TypeofOperation] as int) [DIOT-TypeofOperation],
	cast([Correction] as int) [Correction],
	cast([Applies-toDoc_Type] as int) [Applies-toDoc_Type],
	cast([Pmt_DiscountDate] as datetime) [Pmt_DiscountDate],
	cast([CurrencyFactor] as numeric(19,4)) [CurrencyFactor],
	cast([$systemModifiedBy] as nvarchar(4000)) [$systemModifiedBy],
	cast([DraftInvoiceSystemId] as nvarchar(4000)) [DraftInvoiceSystemId],
	cast([FiscalInvoiceNumberPAC] as nvarchar(4000)) [FiscalInvoiceNumberPAC],
	cast([Buy-fromVendorNo_] as nvarchar(4000)) [Buy-fromVendorNo_],
	cast([Pay-toAddress2] as nvarchar(4000)) [Pay-toAddress2],
	cast([Ship-toContact] as nvarchar(4000)) [Ship-toContact],
	cast([Ship-toAddress2] as nvarchar(4000)) [Ship-toAddress2],
	cast([Ship-toName2] as nvarchar(4000)) [Ship-toName2],
	cast([ShortcutDimension2Code] as nvarchar(4000)) [ShortcutDimension2Code],
	cast([LocationCode] as nvarchar(4000)) [LocationCode],
	cast([PaymentTermsCode] as nvarchar(4000)) [PaymentTermsCode],
	cast([OrderNo_] as nvarchar(4000)) [OrderNo_],
	cast([LanguageCode] as nvarchar(4000)) [LanguageCode],
	cast([CurrencyCode] as nvarchar(4000)) [CurrencyCode],
	cast([VendorInvoiceNo_] as nvarchar(4000)) [VendorInvoiceNo_],
	cast([VATCountry_RegionCode] as nvarchar(4000)) [VATCountry_RegionCode],
	cast([TransactionType] as nvarchar(4000)) [TransactionType],
	cast([Gen_Bus_PostingGroup] as nvarchar(4000)) [Gen_Bus_PostingGroup],
	cast([Buy-fromAddress2] as nvarchar(4000)) [Buy-fromAddress2],
	cast([Buy-fromVendorName2] as nvarchar(4000)) [Buy-fromVendorName2],
	cast([Pay-toCountry_RegionCode] as nvarchar(4000)) [Pay-toCountry_RegionCode],
	cast([TransactionSpecification] as nvarchar(4000)) [TransactionSpecification],
	cast([OrderAddressCode] as nvarchar(4000)) [OrderAddressCode],
	cast([No_Series] as nvarchar(4000)) [No_Series],
	cast([PrepaymentOrderNo_] as nvarchar(4000)) [PrepaymentOrderNo_],
	cast([Pay-toContactNo_] as nvarchar(4000)) [Pay-toContactNo_],
	cast([Buy-fromContactNo_] as nvarchar(4000)) [Buy-fromContactNo_],
	cast([PaymentReference] as nvarchar(4000)) [PaymentReference],
	cast([IRS1099Code] as nvarchar(4000)) [IRS1099Code],
	cast([ProvincialTaxAreaCode] as nvarchar(4000)) [ProvincialTaxAreaCode],
	cast([timestamp] as varbinary(8000)) [timestamp],
	cast([VendorLedgerEntryNo_] as int) [VendorLedgerEntryNo_],
	cast([PrepaymentInvoice] as int) [PrepaymentInvoice],
	cast([No_Printed] as int) [No_Printed],
	cast([DocumentDate] as datetime) [DocumentDate],
	cast([PostingDate] as datetime) [PostingDate],
	cast([$systemModifiedAt] as datetime) [$systemModifiedAt],
	cast([VATBaseDiscount_] as numeric(19,4)) [VATBaseDiscount_],
	cast([Pay-toContact] as nvarchar(4000)) [Pay-toContact],
	cast([Pre-AssignedNo_] as nvarchar(4000)) [Pre-AssignedNo_],
	cast([SourceCode] as nvarchar(4000)) [SourceCode],
	cast([DueDate] as datetime) [DueDate] 
From stg.[BC_BJAuctionCompany_PurchInvHeader_0972_FinalView]
    ');

  CREATE TABLE "dbo"."BC_BJAuctionCompany_PurchInvHeader_0972__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.BC_BJAuctionCompany_PurchInvHeader_0972__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."BC_BJAuctionCompany_PurchInvHeader_0972__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."BC_BJAuctionCompany_PurchInvHeader_0972__dbt_tmp_temp_view"
    end


