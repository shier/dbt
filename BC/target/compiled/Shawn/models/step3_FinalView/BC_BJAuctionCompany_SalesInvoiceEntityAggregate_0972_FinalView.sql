
Select
	[No] as [No_] ,
	[Amount] ,
	[AmountIncludingVAT] ,
	[InvoiceDiscountValue] ,
	[InvoiceDiscountAmount] ,
	[TotalTaxAmount] ,
	[SubtotalAmount] ,
	[timestamp] ,
	[PostingDate] ,
	[DueDate] ,
	[DocumentDate] ,
	[LastModifiedDateTime] ,
	[systemCreatedAt] as [$systemCreatedAt] ,
	[systemModifiedAt] as [$systemModifiedAt] ,
	[Posted] ,
	[DocumentType] ,
	[DiscountAppliedBeforeTax] ,
	[IsTest] ,
	[PricesIncludingVAT] ,
	[TaxLiable] ,
	[InvoiceDiscountCalculation] ,
	[LastEmailSentStatus] ,
	[Cust_LedgerEntryNo] as [Cust_LedgerEntryNo_] ,
	[Status] ,
	[Bill_toCounty] as [Bill-toCounty] ,
	[Bill_toCountry_RegionCode] as [Bill-toCountry_RegionCode] ,
	[Ship_toPostCode] as [Ship-toPostCode] ,
	[Ship_toCounty] as [Ship-toCounty] ,
	[Ship_toCountry_RegionCode] as [Ship-toCountry_RegionCode] ,
	[Sell_toPhoneNo] as [Sell-toPhoneNo_] ,
	[Ship_toName] as [Ship-toName] ,
	[Ship_toAddress] as [Ship-toAddress] ,
	[Ship_toAddress2] as [Ship-toAddress2] ,
	[Ship_toCity] as [Ship-toCity] ,
	[Ship_toContact] as [Ship-toContact] ,
	[Bill_toPostCode] as [Bill-toPostCode] ,
	[Bill_toName] as [Bill-toName] ,
	[Bill_toAddress] as [Bill-toAddress] ,
	[Bill_toAddress2] as [Bill-toAddress2] ,
	[Bill_toCity] as [Bill-toCity] ,
	[Bill_toContact] as [Bill-toContact] ,
	[Ship_toCode] as [Ship-toCode] ,
	[ContactGraphId] ,
	[CurrencyId] ,
	[PaymentTermsId] ,
	[ShipmentMethodId] ,
	[TaxAreaID] ,
	[Bill_toCustomerNo] as [Bill-toCustomerNo_] ,
	[TaxAreaCode] ,
	[VATBus_PostingGroup] ,
	[Sell_toContactNo] as [Sell-toContactNo_] ,
	[Id] ,
	[CustomerId] ,
	[OrderId] ,
	[Sell_toCity] as [Sell-toCity] ,
	[Sell_toContact] as [Sell-toContact] ,
	[Sell_toPostCode] as [Sell-toPostCode] ,
	[Sell_toCounty] as [Sell-toCounty] ,
	[Sell_toCountry_RegionCode] as [Sell-toCountry_RegionCode] ,
	[ExternalDocumentNo] as [ExternalDocumentNo_] ,
	[SalespersonCode] ,
	[OrderNo] as [OrderNo_] ,
	[VATRegistrationNo] as [VATRegistrationNo_] ,
	[Sell_toCustomerName] as [Sell-toCustomerName] ,
	[Sell_toAddress] as [Sell-toAddress] ,
	[Sell_toAddress2] as [Sell-toAddress2] ,
	[Sell_toCustomerNo] as [Sell-toCustomerNo_] ,
	[YourReference] ,
	[PaymentTermsCode] ,
	[ShipmentMethodCode] ,
	[CustomerPostingGroup] ,
	[CurrencyCode] ,
	[Sell_toE_Mail] as [Sell-toE-Mail] ,
	[Bill_toCustomerId] as [Bill-toCustomerId] ,
	[systemId] as [$systemId] ,
	[systemCreatedBy] as [$systemCreatedBy] ,
	[systemModifiedBy] as [$systemModifiedBy] 
From stg.[BC_BJAuctionCompany_SalesInvoiceEntityAggregate_0972_Incr] 
Where [dbt_valid_to] is null