
  
  if object_id ('"dbo"."BC_BJAuctionCompany_SalesInvoiceHeader_0972__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."BC_BJAuctionCompany_SalesInvoiceHeader_0972__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."BC_BJAuctionCompany_SalesInvoiceHeader_0972__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."BC_BJAuctionCompany_SalesInvoiceHeader_0972__dbt_tmp"
    end


   EXEC('create view dbo.BC_BJAuctionCompany_SalesInvoiceHeader_0972__dbt_tmp_temp_view as
    
Select
	cast([CurrencyFactor] as numeric(19,4)) [CurrencyFactor],
	cast([PaymentInstructions] as varbinary(8000)) [PaymentInstructions],
	cast([DigitalStampPAC] as varbinary(8000)) [DigitalStampPAC],
	cast([OriginalString] as varbinary(8000)) [OriginalString],
	cast([WorkDescription] as varbinary(8000)) [WorkDescription],
	cast([PrepaymentInvoice] as int) [PrepaymentInvoice],
	cast([TaxLiable] as int) [TaxLiable],
	cast([Bal_AccountType] as int) [Bal_AccountType],
	cast([AllowLineDisc_] as int) [AllowLineDisc_],
	cast([CoupledtoCRM] as int) [CoupledtoCRM],
	cast([PriceCalculationMethod] as int) [PriceCalculationMethod],
	cast([ElectronicDocumentSent] as int) [ElectronicDocumentSent],
	cast([$systemCreatedAt] as datetime) [$systemCreatedAt],
	cast([Pmt_DiscountDate] as datetime) [Pmt_DiscountDate],
	cast([ShipmentDate] as datetime) [ShipmentDate],
	cast([OrderDate] as datetime) [OrderDate],
	cast([Applies-toDoc_Type] as int) [Applies-toDoc_Type],
	cast([PricesIncludingVAT] as int) [PricesIncludingVAT],
	cast([Bill-toName2] as nvarchar(4000)) [Bill-toName2],
	cast([Bill-toCustomerNo_] as nvarchar(4000)) [Bill-toCustomerNo_],
	cast([Ship-toName2] as nvarchar(4000)) [Ship-toName2],
	cast([YourReference] as nvarchar(4000)) [YourReference],
	cast([PaymentTermsCode] as nvarchar(4000)) [PaymentTermsCode],
	cast([Ship-toContact] as nvarchar(4000)) [Ship-toContact],
	cast([Ship-toAddress] as nvarchar(4000)) [Ship-toAddress],
	cast([ShortcutDimension2Code] as nvarchar(4000)) [ShortcutDimension2Code],
	cast([LocationCode] as nvarchar(4000)) [LocationCode],
	cast([OrderNo_] as nvarchar(4000)) [OrderNo_],
	cast([CustomerDisc_Group] as nvarchar(4000)) [CustomerDisc_Group],
	cast([Gen_Bus_PostingGroup] as nvarchar(4000)) [Gen_Bus_PostingGroup],
	cast([Bal_AccountNo_] as nvarchar(4000)) [Bal_AccountNo_],
	cast([Sell-toAddress] as nvarchar(4000)) [Sell-toAddress],
	cast([Sell-toCustomerName] as nvarchar(4000)) [Sell-toCustomerName],
	cast([VATCountry_RegionCode] as nvarchar(4000)) [VATCountry_RegionCode],
	cast([TransactionType] as nvarchar(4000)) [TransactionType],
	cast([Bill-toCounty] as nvarchar(4000)) [Bill-toCounty],
	cast([Sell-toContact] as nvarchar(4000)) [Sell-toContact],
	cast([Ship-toCountry_RegionCode] as nvarchar(4000)) [Ship-toCountry_RegionCode],
	cast([Ship-toPostCode] as nvarchar(4000)) [Ship-toPostCode],
	cast([Sell-toPostCode] as nvarchar(4000)) [Sell-toPostCode],
	cast([PaymentMethodCode] as nvarchar(4000)) [PaymentMethodCode],
	cast([Area] as nvarchar(4000)) [Area],
	cast([OrderNo_Series] as nvarchar(4000)) [OrderNo_Series],
	cast([Pre-AssignedNo_Series] as nvarchar(4000)) [Pre-AssignedNo_Series],
	cast([PrepaymentOrderNo_] as nvarchar(4000)) [PrepaymentOrderNo_],
	cast([VATBus_PostingGroup] as nvarchar(4000)) [VATBus_PostingGroup],
	cast([SourceCode] as nvarchar(4000)) [SourceCode],
	cast([Sell-toContactNo_] as nvarchar(4000)) [Sell-toContactNo_],
	cast([Doc_Exch_OriginalIdentifier] as nvarchar(4000)) [Doc_Exch_OriginalIdentifier],
	cast([TaxExemptionNo_] as nvarchar(4000)) [TaxExemptionNo_],
	cast([Id] as nvarchar(4000)) [Id],
	cast([OpportunityNo_] as nvarchar(4000)) [OpportunityNo_],
	cast([ErrorCode] as nvarchar(4000)) [ErrorCode],
	cast([Date_TimeStamped] as nvarchar(4000)) [Date_TimeStamped],
	cast([PaymentInstructionsName] as nvarchar(4000)) [PaymentInstructionsName],
	cast([Sell-toPhoneNo_] as nvarchar(4000)) [Sell-toPhoneNo_],
	cast([PACWebServiceName] as nvarchar(4000)) [PACWebServiceName],
	cast([PaymentReference] as nvarchar(4000)) [PaymentReference],
	cast([CFDIRelation] as nvarchar(4000)) [CFDIRelation],
	cast([$systemModifiedBy] as nvarchar(4000)) [$systemModifiedBy],
	cast([VATBaseDiscount_] as numeric(19,4)) [VATBaseDiscount_],
	cast([DigitalStampSAT] as varbinary(8000)) [DigitalStampSAT],
	cast([DimensionSetID] as int) [DimensionSetID],
	cast([PaymentServiceSetID] as int) [PaymentServiceSetID],
	cast([No_ofE-DocumentsSent] as int) [No_ofE-DocumentsSent],
	cast([Bill-toAddress] as nvarchar(4000)) [Bill-toAddress],
	cast([Ship-toCode] as nvarchar(4000)) [Ship-toCode],
	cast([Bill-toCity] as nvarchar(4000)) [Bill-toCity],
	cast([Ship-toAddress2] as nvarchar(4000)) [Ship-toAddress2],
	cast([CustomerPostingGroup] as nvarchar(4000)) [CustomerPostingGroup],
	cast([VATRegistrationNo_] as nvarchar(4000)) [VATRegistrationNo_],
	cast([OnHold] as nvarchar(4000)) [OnHold],
	cast([TransportMethod] as nvarchar(4000)) [TransportMethod],
	cast([Sell-toCounty] as nvarchar(4000)) [Sell-toCounty],
	cast([ExitPoint] as nvarchar(4000)) [ExitPoint],
	cast([QuoteNo_] as nvarchar(4000)) [QuoteNo_],
	cast([DirectDebitMandateID] as nvarchar(4000)) [DirectDebitMandateID],
	cast([STETransactionID] as nvarchar(4000)) [STETransactionID],
	cast([Date_TimeSent] as nvarchar(4000)) [Date_TimeSent],
	cast([DraftInvoiceSystemId] as nvarchar(4000)) [DraftInvoiceSystemId],
	cast([$systemId] as nvarchar(4000)) [$systemId],
	cast([CFDIPurpose] as nvarchar(4000)) [CFDIPurpose],
	cast([PaymentDiscount_] as numeric(19,4)) [PaymentDiscount_],
	cast([QRCode] as varbinary(8000)) [QRCode],
	cast([SignedDocumentXML] as varbinary(8000)) [SignedDocumentXML],
	cast([OriginalDocumentXML] as varbinary(8000)) [OriginalDocumentXML],
	cast([timestamp] as varbinary(8000)) [timestamp],
	cast([InvoiceDiscountCalculation] as int) [InvoiceDiscountCalculation],
	cast([Correction] as int) [Correction],
	cast([Cust_LedgerEntryNo_] as int) [Cust_LedgerEntryNo_],
	cast([DocumentExchangeStatus] as int) [DocumentExchangeStatus],
	cast([ElectronicDocumentStatus] as int) [ElectronicDocumentStatus],
	cast([$systemModifiedAt] as datetime) [$systemModifiedAt],
	cast([DocumentDate] as datetime) [DocumentDate],
	cast([DueDate] as datetime) [DueDate],
	cast([PostingDate] as datetime) [PostingDate],
	cast([EU3-PartyTrade] as int) [EU3-PartyTrade],
	cast([Bill-toAddress2] as nvarchar(4000)) [Bill-toAddress2],
	cast([Bill-toName] as nvarchar(4000)) [Bill-toName],
	cast([Sell-toCustomerNo_] as nvarchar(4000)) [Sell-toCustomerNo_],
	cast([Bill-toContact] as nvarchar(4000)) [Bill-toContact],
	cast([PostingDescription] as nvarchar(4000)) [PostingDescription],
	cast([CurrencyCode] as nvarchar(4000)) [CurrencyCode],
	cast([ShortcutDimension1Code] as nvarchar(4000)) [ShortcutDimension1Code],
	cast([ShipmentMethodCode] as nvarchar(4000)) [ShipmentMethodCode],
	cast([SalespersonCode] as nvarchar(4000)) [SalespersonCode],
	cast([LanguageCode] as nvarchar(4000)) [LanguageCode],
	cast([InvoiceDisc_Code] as nvarchar(4000)) [InvoiceDisc_Code],
	cast([CustomerPriceGroup] as nvarchar(4000)) [CustomerPriceGroup],
	cast([Applies-toDoc_No_] as nvarchar(4000)) [Applies-toDoc_No_],
	cast([Sell-toCustomerName2] as nvarchar(4000)) [Sell-toCustomerName2],
	cast([Bill-toCountry_RegionCode] as nvarchar(4000)) [Bill-toCountry_RegionCode],
	cast([Bill-toPostCode] as nvarchar(4000)) [Bill-toPostCode],
	cast([Sell-toCity] as nvarchar(4000)) [Sell-toCity],
	cast([Sell-toAddress2] as nvarchar(4000)) [Sell-toAddress2],
	cast([Ship-toCounty] as nvarchar(4000)) [Ship-toCounty],
	cast([Sell-toCountry_RegionCode] as nvarchar(4000)) [Sell-toCountry_RegionCode],
	cast([ShippingAgentCode] as nvarchar(4000)) [ShippingAgentCode],
	cast([TransactionSpecification] as nvarchar(4000)) [TransactionSpecification],
	cast([ExternalDocumentNo_] as nvarchar(4000)) [ExternalDocumentNo_],
	cast([UserID] as nvarchar(4000)) [UserID],
	cast([Pre-AssignedNo_] as nvarchar(4000)) [Pre-AssignedNo_],
	cast([No_Series] as nvarchar(4000)) [No_Series],
	cast([PrepaymentNo_Series] as nvarchar(4000)) [PrepaymentNo_Series],
	cast([TaxAreaCode] as nvarchar(4000)) [TaxAreaCode],
	cast([DocumentExchangeIdentifier] as nvarchar(4000)) [DocumentExchangeIdentifier],
	cast([Ship-toUPSZone] as nvarchar(4000)) [Ship-toUPSZone],
	cast([ResponsibilityCenter] as nvarchar(4000)) [ResponsibilityCenter],
	cast([ErrorDescription] as nvarchar(4000)) [ErrorDescription],
	cast([Date_TimeCanceled] as nvarchar(4000)) [Date_TimeCanceled],
	cast([CertificateSerialNo_] as nvarchar(4000)) [CertificateSerialNo_],
	cast([Date_TimeFirstReq_Sent] as nvarchar(4000)) [Date_TimeFirstReq_Sent],
	cast([FiscalInvoiceNumberPAC] as nvarchar(4000)) [FiscalInvoiceNumberPAC],
	cast([No_] as nvarchar(4000)) [No_],
	cast([InvoiceDiscountValue] as numeric(19,4)) [InvoiceDiscountValue],
	cast([GetShipmentUsed] as int) [GetShipmentUsed],
	cast([No_Printed] as int) [No_Printed],
	cast([Ship-toName] as nvarchar(4000)) [Ship-toName],
	cast([Ship-toCity] as nvarchar(4000)) [Ship-toCity],
	cast([ReasonCode] as nvarchar(4000)) [ReasonCode],
	cast([PackageTrackingNo_] as nvarchar(4000)) [PackageTrackingNo_],
	cast([Bill-toContactNo_] as nvarchar(4000)) [Bill-toContactNo_],
	cast([CampaignNo_] as nvarchar(4000)) [CampaignNo_],
	cast([Sell-toE-Mail] as nvarchar(4000)) [Sell-toE-Mail],
	cast([$systemCreatedBy] as nvarchar(4000)) [$systemCreatedBy] 
From stg.[BC_BJAuctionCompany_SalesInvoiceHeader_0972_FinalView]
    ');

  CREATE TABLE "dbo"."BC_BJAuctionCompany_SalesInvoiceHeader_0972__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.BC_BJAuctionCompany_SalesInvoiceHeader_0972__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."BC_BJAuctionCompany_SalesInvoiceHeader_0972__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."BC_BJAuctionCompany_SalesInvoiceHeader_0972__dbt_tmp_temp_view"
    end


