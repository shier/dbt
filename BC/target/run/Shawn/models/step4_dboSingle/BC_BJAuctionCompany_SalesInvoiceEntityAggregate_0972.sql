
  
  if object_id ('"dbo"."BC_BJAuctionCompany_SalesInvoiceEntityAggregate_0972__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."BC_BJAuctionCompany_SalesInvoiceEntityAggregate_0972__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."BC_BJAuctionCompany_SalesInvoiceEntityAggregate_0972__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."BC_BJAuctionCompany_SalesInvoiceEntityAggregate_0972__dbt_tmp"
    end


   EXEC('create view dbo.BC_BJAuctionCompany_SalesInvoiceEntityAggregate_0972__dbt_tmp_temp_view as
    
Select
	cast([$systemModifiedBy] as nvarchar(4000)) [$systemModifiedBy],
	cast([Bill-toCustomerId] as nvarchar(4000)) [Bill-toCustomerId],
	cast([No_] as nvarchar(4000)) [No_],
	cast([ShipmentMethodCode] as nvarchar(4000)) [ShipmentMethodCode],
	cast([YourReference] as nvarchar(4000)) [YourReference],
	cast([Sell-toAddress2] as nvarchar(4000)) [Sell-toAddress2],
	cast([VATRegistrationNo_] as nvarchar(4000)) [VATRegistrationNo_],
	cast([SalespersonCode] as nvarchar(4000)) [SalespersonCode],
	cast([Sell-toCounty] as nvarchar(4000)) [Sell-toCounty],
	cast([Sell-toContact] as nvarchar(4000)) [Sell-toContact],
	cast([CustomerId] as nvarchar(4000)) [CustomerId],
	cast([Sell-toContactNo_] as nvarchar(4000)) [Sell-toContactNo_],
	cast([TaxAreaCode] as nvarchar(4000)) [TaxAreaCode],
	cast([TaxAreaID] as nvarchar(4000)) [TaxAreaID],
	cast([CurrencyId] as nvarchar(4000)) [CurrencyId],
	cast([Ship-toCode] as nvarchar(4000)) [Ship-toCode],
	cast([Bill-toCity] as nvarchar(4000)) [Bill-toCity],
	cast([Bill-toAddress2] as nvarchar(4000)) [Bill-toAddress2],
	cast([Bill-toName] as nvarchar(4000)) [Bill-toName],
	cast([Ship-toContact] as nvarchar(4000)) [Ship-toContact],
	cast([Ship-toAddress] as nvarchar(4000)) [Ship-toAddress],
	cast([Sell-toPhoneNo_] as nvarchar(4000)) [Sell-toPhoneNo_],
	cast([Ship-toPostCode] as nvarchar(4000)) [Ship-toPostCode],
	cast([Status] as int) [Status],
	cast([LastEmailSentStatus] as int) [LastEmailSentStatus],
	cast([InvoiceDiscountCalculation] as int) [InvoiceDiscountCalculation],
	cast([PricesIncludingVAT] as int) [PricesIncludingVAT],
	cast([DiscountAppliedBeforeTax] as int) [DiscountAppliedBeforeTax],
	cast([$systemModifiedAt] as datetime) [$systemModifiedAt],
	cast([LastModifiedDateTime] as datetime) [LastModifiedDateTime],
	cast([PostingDate] as datetime) [PostingDate],
	cast([SubtotalAmount] as numeric(19,4)) [SubtotalAmount],
	cast([InvoiceDiscountValue] as numeric(19,4)) [InvoiceDiscountValue],
	cast([$systemId] as nvarchar(4000)) [$systemId],
	cast([Sell-toCustomerName] as nvarchar(4000)) [Sell-toCustomerName],
	cast([Sell-toCountry_RegionCode] as nvarchar(4000)) [Sell-toCountry_RegionCode],
	cast([OrderId] as nvarchar(4000)) [OrderId],
	cast([Id] as nvarchar(4000)) [Id],
	cast([PaymentTermsId] as nvarchar(4000)) [PaymentTermsId],
	cast([Ship-toAddress2] as nvarchar(4000)) [Ship-toAddress2],
	cast([Ship-toCounty] as nvarchar(4000)) [Ship-toCounty],
	cast([Bill-toCounty] as nvarchar(4000)) [Bill-toCounty],
	cast([TaxLiable] as int) [TaxLiable],
	cast([Posted] as int) [Posted],
	cast([DueDate] as datetime) [DueDate],
	cast([Amount] as numeric(19,4)) [Amount],
	cast([$systemCreatedBy] as nvarchar(4000)) [$systemCreatedBy],
	cast([Sell-toE-Mail] as nvarchar(4000)) [Sell-toE-Mail],
	cast([CustomerPostingGroup] as nvarchar(4000)) [CustomerPostingGroup],
	cast([PaymentTermsCode] as nvarchar(4000)) [PaymentTermsCode],
	cast([Sell-toCustomerNo_] as nvarchar(4000)) [Sell-toCustomerNo_],
	cast([Sell-toAddress] as nvarchar(4000)) [Sell-toAddress],
	cast([OrderNo_] as nvarchar(4000)) [OrderNo_],
	cast([ExternalDocumentNo_] as nvarchar(4000)) [ExternalDocumentNo_],
	cast([Sell-toPostCode] as nvarchar(4000)) [Sell-toPostCode],
	cast([Sell-toCity] as nvarchar(4000)) [Sell-toCity],
	cast([VATBus_PostingGroup] as nvarchar(4000)) [VATBus_PostingGroup],
	cast([Bill-toCustomerNo_] as nvarchar(4000)) [Bill-toCustomerNo_],
	cast([ShipmentMethodId] as nvarchar(4000)) [ShipmentMethodId],
	cast([ContactGraphId] as nvarchar(4000)) [ContactGraphId],
	cast([Bill-toContact] as nvarchar(4000)) [Bill-toContact],
	cast([Bill-toAddress] as nvarchar(4000)) [Bill-toAddress],
	cast([Bill-toPostCode] as nvarchar(4000)) [Bill-toPostCode],
	cast([Ship-toCity] as nvarchar(4000)) [Ship-toCity],
	cast([Ship-toName] as nvarchar(4000)) [Ship-toName],
	cast([Ship-toCountry_RegionCode] as nvarchar(4000)) [Ship-toCountry_RegionCode],
	cast([Cust_LedgerEntryNo_] as int) [Cust_LedgerEntryNo_],
	cast([IsTest] as int) [IsTest],
	cast([DocumentType] as int) [DocumentType],
	cast([$systemCreatedAt] as datetime) [$systemCreatedAt],
	cast([DocumentDate] as datetime) [DocumentDate],
	cast([timestamp] as varbinary(8000)) [timestamp],
	cast([TotalTaxAmount] as numeric(19,4)) [TotalTaxAmount],
	cast([InvoiceDiscountAmount] as numeric(19,4)) [InvoiceDiscountAmount],
	cast([CurrencyCode] as nvarchar(4000)) [CurrencyCode],
	cast([Bill-toCountry_RegionCode] as nvarchar(4000)) [Bill-toCountry_RegionCode],
	cast([AmountIncludingVAT] as numeric(19,4)) [AmountIncludingVAT] 
From stg.[BC_BJAuctionCompany_SalesInvoiceEntityAggregate_0972_FinalView]
    ');

  CREATE TABLE "dbo"."BC_BJAuctionCompany_SalesInvoiceEntityAggregate_0972__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.BC_BJAuctionCompany_SalesInvoiceEntityAggregate_0972__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."BC_BJAuctionCompany_SalesInvoiceEntityAggregate_0972__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."BC_BJAuctionCompany_SalesInvoiceEntityAggregate_0972__dbt_tmp_temp_view"
    end


