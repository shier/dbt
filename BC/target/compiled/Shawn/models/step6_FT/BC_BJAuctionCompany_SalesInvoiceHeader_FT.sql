
SELECT
    t1.[No_], 

    t1.[OrderDate],
    t1.[PostingDate],
    t1.[ShipmentDate],
    t1.[DueDate],
    t1.[DocumentDate],

    t1.[OrderNo_], 
    t1.[QuoteNo_], 
    t1.[Cust_LedgerEntryNo_], 
    t1.[ExternalDocumentNo_], 

    t2.[WCI-AuctionDocumentNo_], 
    t2.[WCI-LotNo_], 
    t2.[WCI-AuctionID], 
    t2.[WCI-ImportedDocument], 

    t1.[Sell-toCustomerNo_], 
    t1.[Sell-toCustomerName],
    t1.[Bill-toCustomerNo_], 

    t1.[No_Series], 
    t1.[SourceCode], 

    t1.[CustomerPostingGroup], 
    t1.[CurrencyCode], 
    t1.[CustomerPriceGroup], 
    t1.[ShortcutDimension1Code], 
    t1.[ShortcutDimension2Code], 
    t1.[PaymentTermsCode], 
    t1.[PaymentDiscount_], 
    t1.[PricesIncludingVAT], 
    t1.[VATRegistrationNo_], 
    t1.[SalespersonCode], 
    t1.[LocationCode], 
    t1.[Gen_Bus_PostingGroup], 

    t1.[ElectronicDocumentStatus], 
    t1.[Date_TimeStamped], 
    t1.[Date_TimeSent], 
    t1.[Date_TimeCanceled], 
    t1.[ErrorCode], 
    t1.[ErrorDescription], 
    t1.[No_ofE-DocumentsSent], 

    t1.[EU3-PartyTrade], 
    t1.[ExitPoint], 
    t1.[Area], 
    t1.[TransactionType], 
    t1.[TransportMethod], 
    t1.[TransactionSpecification], 
    t1.[PackageTrackingNo_], 
    t1.[TaxAreaCode], 
    t1.[TaxLiable], 
    t1.[VATBus_PostingGroup], 
    t1.[InvoiceDiscountCalculation], 
    t1.[InvoiceDiscountValue], 
    t1.[ResponsibilityCenter], 
    t1.[AllowLineDisc_], 
    t1.[PriceCalculationMethod], 

    t1.[Ship-toCode], 
    t1.[Ship-toName], 
    t1.[Ship-toName2], 
    t1.[Ship-toAddress], 
    t1.[Ship-toAddress2], 
    t1.[Ship-toCity], 
    t1.[Ship-toContact], 
    t1.[Ship-toPostCode], 
    t1.[Ship-toCounty], 
    t1.[Ship-toCountry_RegionCode], 
    t1.[Ship-toUPSZone]
From [stg].[BC_BJAuctionCompany_SalesInvoiceHeader_0972_FinalView] t1
left join [stg].[BC_BJAuctionCompany_SalesInvoiceHeader_8d9d_FinalView] t2
on t1.No_=t2.No_