
  
  if object_id ('"dbo"."BC_BJAuctionCompany_SalesCrMemoHeader_0972__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."BC_BJAuctionCompany_SalesCrMemoHeader_0972__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."BC_BJAuctionCompany_SalesCrMemoHeader_0972__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."BC_BJAuctionCompany_SalesCrMemoHeader_0972__dbt_tmp"
    end


   EXEC('create view dbo.BC_BJAuctionCompany_SalesCrMemoHeader_0972__dbt_tmp_temp_view as
    
Select
	cast([DigitalStampPAC] as varbinary(8000)) [DigitalStampPAC],
	cast([DigitalStampSAT] as varbinary(8000)) [DigitalStampSAT],
	cast([OriginalDocumentXML] as varbinary(8000)) [OriginalDocumentXML],
	cast([CurrencyFactor] as numeric(19,4)) [CurrencyFactor],
	cast([ElectronicDocumentStatus] as int) [ElectronicDocumentStatus],
	cast([PrepaymentCreditMemo] as int) [PrepaymentCreditMemo],
	cast([Bal_AccountType] as int) [Bal_AccountType],
	cast([ElectronicDocumentSent] as int) [ElectronicDocumentSent],
	cast([AllowLineDisc_] as int) [AllowLineDisc_],
	cast([DimensionSetID] as int) [DimensionSetID],
	cast([PricesIncludingVAT] as int) [PricesIncludingVAT],
	cast([$systemCreatedAt] as datetime) [$systemCreatedAt],
	cast([ShipmentDate] as datetime) [ShipmentDate],
	cast([Bill-toAddress2] as nvarchar(4000)) [Bill-toAddress2],
	cast([Bill-toName2] as nvarchar(4000)) [Bill-toName2],
	cast([Bill-toCustomerNo_] as nvarchar(4000)) [Bill-toCustomerNo_],
	cast([Ship-toName2] as nvarchar(4000)) [Ship-toName2],
	cast([Ship-toCode] as nvarchar(4000)) [Ship-toCode],
	cast([Bill-toContact] as nvarchar(4000)) [Bill-toContact],
	cast([PaymentTermsCode] as nvarchar(4000)) [PaymentTermsCode],
	cast([Ship-toCity] as nvarchar(4000)) [Ship-toCity],
	cast([Ship-toAddress] as nvarchar(4000)) [Ship-toAddress],
	cast([CustomerPostingGroup] as nvarchar(4000)) [CustomerPostingGroup],
	cast([ShortcutDimension1Code] as nvarchar(4000)) [ShortcutDimension1Code],
	cast([LanguageCode] as nvarchar(4000)) [LanguageCode],
	cast([InvoiceDisc_Code] as nvarchar(4000)) [InvoiceDisc_Code],
	cast([Gen_Bus_PostingGroup] as nvarchar(4000)) [Gen_Bus_PostingGroup],
	cast([VATRegistrationNo_] as nvarchar(4000)) [VATRegistrationNo_],
	cast([Applies-toDoc_No_] as nvarchar(4000)) [Applies-toDoc_No_],
	cast([Sell-toAddress] as nvarchar(4000)) [Sell-toAddress],
	cast([Sell-toCustomerName2] as nvarchar(4000)) [Sell-toCustomerName2],
	cast([VATCountry_RegionCode] as nvarchar(4000)) [VATCountry_RegionCode],
	cast([Bill-toCountry_RegionCode] as nvarchar(4000)) [Bill-toCountry_RegionCode],
	cast([Sell-toContact] as nvarchar(4000)) [Sell-toContact],
	cast([ExitPoint] as nvarchar(4000)) [ExitPoint],
	cast([Ship-toPostCode] as nvarchar(4000)) [Ship-toPostCode],
	cast([PaymentMethodCode] as nvarchar(4000)) [PaymentMethodCode],
	cast([Area] as nvarchar(4000)) [Area],
	cast([Prepmt_Cr_MemoNo_Series] as nvarchar(4000)) [Prepmt_Cr_MemoNo_Series],
	cast([TaxAreaCode] as nvarchar(4000)) [TaxAreaCode],
	cast([UserID] as nvarchar(4000)) [UserID],
	cast([Sell-toContactNo_] as nvarchar(4000)) [Sell-toContactNo_],
	cast([Doc_Exch_OriginalIdentifier] as nvarchar(4000)) [Doc_Exch_OriginalIdentifier],
	cast([ReturnOrderNo_] as nvarchar(4000)) [ReturnOrderNo_],
	cast([OpportunityNo_] as nvarchar(4000)) [OpportunityNo_],
	cast([Date_TimeSent] as nvarchar(4000)) [Date_TimeSent],
	cast([STETransactionID] as nvarchar(4000)) [STETransactionID],
	cast([Date_TimeFirstReq_Sent] as nvarchar(4000)) [Date_TimeFirstReq_Sent],
	cast([ErrorDescription] as nvarchar(4000)) [ErrorDescription],
	cast([PackageTrackingNo_] as nvarchar(4000)) [PackageTrackingNo_],
	cast([$systemId] as nvarchar(4000)) [$systemId],
	cast([CFDIPurpose] as nvarchar(4000)) [CFDIPurpose],
	cast([$systemCreatedBy] as nvarchar(4000)) [$systemCreatedBy],
	cast([QRCode] as varbinary(8000)) [QRCode],
	cast([SignedDocumentXML] as varbinary(8000)) [SignedDocumentXML],
	cast([PriceCalculationMethod] as int) [PriceCalculationMethod],
	cast([No_ofE-DocumentsSent] as int) [No_ofE-DocumentsSent],
	cast([TaxLiable] as int) [TaxLiable],
	cast([Applies-toDoc_Type] as int) [Applies-toDoc_Type],
	cast([DocumentExchangeStatus] as int) [DocumentExchangeStatus],
	cast([Pmt_DiscountDate] as datetime) [Pmt_DiscountDate],
	cast([Ship-toContact] as nvarchar(4000)) [Ship-toContact],
	cast([Ship-toAddress2] as nvarchar(4000)) [Ship-toAddress2],
	cast([CurrencyCode] as nvarchar(4000)) [CurrencyCode],
	cast([ShipmentMethodCode] as nvarchar(4000)) [ShipmentMethodCode],
	cast([SalespersonCode] as nvarchar(4000)) [SalespersonCode],
	cast([TransactionType] as nvarchar(4000)) [TransactionType],
	cast([Sell-toPostCode] as nvarchar(4000)) [Sell-toPostCode],
	cast([Ship-toCounty] as nvarchar(4000)) [Ship-toCounty],
	cast([Sell-toCounty] as nvarchar(4000)) [Sell-toCounty],
	cast([Pre-AssignedNo_Series] as nvarchar(4000)) [Pre-AssignedNo_Series],
	cast([Bill-toContactNo_] as nvarchar(4000)) [Bill-toContactNo_],
	cast([CampaignNo_] as nvarchar(4000)) [CampaignNo_],
	cast([Ship-toUPSZone] as nvarchar(4000)) [Ship-toUPSZone],
	cast([ReturnOrderNo_Series] as nvarchar(4000)) [ReturnOrderNo_Series],
	cast([CertificateSerialNo_] as nvarchar(4000)) [CertificateSerialNo_],
	cast([Sell-toPhoneNo_] as nvarchar(4000)) [Sell-toPhoneNo_],
	cast([PACWebServiceName] as nvarchar(4000)) [PACWebServiceName],
	cast([ShippingAgentServiceCode] as nvarchar(4000)) [ShippingAgentServiceCode],
	cast([WorkDescription] as varbinary(8000)) [WorkDescription],
	cast([OriginalString] as varbinary(8000)) [OriginalString],
	cast([timestamp] as varbinary(8000)) [timestamp],
	cast([VATBaseDiscount_] as numeric(19,4)) [VATBaseDiscount_],
	cast([GetReturnReceiptUsed] as int) [GetReturnReceiptUsed],
	cast([Cust_LedgerEntryNo_] as int) [Cust_LedgerEntryNo_],
	cast([No_Printed] as int) [No_Printed],
	cast([$systemModifiedAt] as datetime) [$systemModifiedAt],
	cast([DocumentDate] as datetime) [DocumentDate],
	cast([PostingDate] as datetime) [PostingDate],
	cast([Bill-toName] as nvarchar(4000)) [Bill-toName],
	cast([Ship-toName] as nvarchar(4000)) [Ship-toName],
	cast([Bill-toCity] as nvarchar(4000)) [Bill-toCity],
	cast([ShortcutDimension2Code] as nvarchar(4000)) [ShortcutDimension2Code],
	cast([LocationCode] as nvarchar(4000)) [LocationCode],
	cast([OnHold] as nvarchar(4000)) [OnHold],
	cast([CustomerDisc_Group] as nvarchar(4000)) [CustomerDisc_Group],
	cast([CustomerPriceGroup] as nvarchar(4000)) [CustomerPriceGroup],
	cast([ReasonCode] as nvarchar(4000)) [ReasonCode],
	cast([Bal_AccountNo_] as nvarchar(4000)) [Bal_AccountNo_],
	cast([Sell-toAddress2] as nvarchar(4000)) [Sell-toAddress2],
	cast([Sell-toCustomerName] as nvarchar(4000)) [Sell-toCustomerName],
	cast([TransportMethod] as nvarchar(4000)) [TransportMethod],
	cast([Bill-toCounty] as nvarchar(4000)) [Bill-toCounty],
	cast([Bill-toPostCode] as nvarchar(4000)) [Bill-toPostCode],
	cast([Sell-toCity] as nvarchar(4000)) [Sell-toCity],
	cast([Ship-toCountry_RegionCode] as nvarchar(4000)) [Ship-toCountry_RegionCode],
	cast([Sell-toCountry_RegionCode] as nvarchar(4000)) [Sell-toCountry_RegionCode],
	cast([TransactionSpecification] as nvarchar(4000)) [TransactionSpecification],
	cast([ExternalDocumentNo_] as nvarchar(4000)) [ExternalDocumentNo_],
	cast([VATBus_PostingGroup] as nvarchar(4000)) [VATBus_PostingGroup],
	cast([SourceCode] as nvarchar(4000)) [SourceCode],
	cast([DocumentExchangeIdentifier] as nvarchar(4000)) [DocumentExchangeIdentifier],
	cast([PrepaymentOrderNo_] as nvarchar(4000)) [PrepaymentOrderNo_],
	cast([ResponsibilityCenter] as nvarchar(4000)) [ResponsibilityCenter],
	cast([Date_TimeCanceled] as nvarchar(4000)) [Date_TimeCanceled],
	cast([Date_TimeStamped] as nvarchar(4000)) [Date_TimeStamped],
	cast([TaxExemptionNo_] as nvarchar(4000)) [TaxExemptionNo_],
	cast([FiscalInvoiceNumberPAC] as nvarchar(4000)) [FiscalInvoiceNumberPAC],
	cast([ErrorCode] as nvarchar(4000)) [ErrorCode],
	cast([ShippingAgentCode] as nvarchar(4000)) [ShippingAgentCode],
	cast([CFDIRelation] as nvarchar(4000)) [CFDIRelation],
	cast([Sell-toE-Mail] as nvarchar(4000)) [Sell-toE-Mail],
	cast([$systemModifiedBy] as nvarchar(4000)) [$systemModifiedBy],
	cast([DraftCr_MemoSystemId] as nvarchar(4000)) [DraftCr_MemoSystemId],
	cast([No_] as nvarchar(4000)) [No_],
	cast([PaymentDiscount_] as numeric(19,4)) [PaymentDiscount_],
	cast([Correction] as int) [Correction],
	cast([EU3-PartyTrade] as int) [EU3-PartyTrade],
	cast([DueDate] as datetime) [DueDate],
	cast([Bill-toAddress] as nvarchar(4000)) [Bill-toAddress],
	cast([Sell-toCustomerNo_] as nvarchar(4000)) [Sell-toCustomerNo_],
	cast([YourReference] as nvarchar(4000)) [YourReference],
	cast([PostingDescription] as nvarchar(4000)) [PostingDescription],
	cast([No_Series] as nvarchar(4000)) [No_Series],
	cast([Pre-AssignedNo_] as nvarchar(4000)) [Pre-AssignedNo_],
	cast([Id] as nvarchar(4000)) [Id] 
From stg.[BC_BJAuctionCompany_SalesCrMemoHeader_0972_FinalView]
    ');

  CREATE TABLE "dbo"."BC_BJAuctionCompany_SalesCrMemoHeader_0972__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.BC_BJAuctionCompany_SalesCrMemoHeader_0972__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."BC_BJAuctionCompany_SalesCrMemoHeader_0972__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."BC_BJAuctionCompany_SalesCrMemoHeader_0972__dbt_tmp_temp_view"
    end


