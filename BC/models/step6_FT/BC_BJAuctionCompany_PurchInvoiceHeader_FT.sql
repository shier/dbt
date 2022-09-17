{{ config(materialized='table',schema='dbo')}}
SELECT
    t1.[No_],

    t1.[OrderDate],
    t1.[PostingDate],
    t1.[DueDate],
    t1.[DocumentDate],
    t1.[ExpectedReceiptDate],

    t1.[Pay-toVendorNo_],
    t1.[Pay-toName],
    t1.[Pay-toContact],
    t1.[Buy-fromVendorNo_],
    t1.[Buy-fromVendorName],
    t1.[Buy-fromContactNo_],

    t1.[VendorInvoiceNo_],
    t1.[OrderNo_],
    t1.[QuoteNo_],
    t1.[VendorLedgerEntryNo_],

    t2.[WCI-AuctionDocumentNo_], 
    t2.[WCI-LotNo_], 
    t2.[WCI-AuctionID], 
    t2.[WCI-AssignedUserIDBJ], 

    t1.[CurrencyCode],
    t1.[PaymentDiscount_],
    t1.[TaxAreaCode],
    t1.[TaxLiable],
    t1.[TaxExemptionNo_],
    t1.[PaymentTermsCode],
    t1.[ShortcutDimension1Code],
    t1.[ShortcutDimension2Code],
    t1.[FiscalInvoiceNumberPAC],
    t1.[No_Series],
    t1.[SourceCode],

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

From [stg].[BC_BJAuctionCompany_PurchInvHeader_0972_FinalView] t1
left join [stg].[BC_BJAuctionCompany_PurchInvHeader_8d9d_FinalView] t2
on t1.No_=t2.No_