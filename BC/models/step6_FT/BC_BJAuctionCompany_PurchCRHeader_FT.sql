{{ config(materialized='table',schema='dbo')}}
SELECT
    t1.[No_],

    t1.[PostingDate],
    t1.[DueDate],
    t1.[DocumentDate],
    t1.[ExpectedReceiptDate],

    t1.[VendorCr_MemoNo_],
    t1.[OrderAddressCode],
    t1.[VendorLedgerEntryNo_],

    t2.[WCI-AuctionDocumentNo_], 
    t2.[WCI-LotNo_], 
    t2.[WCI-AuctionID], 
    t2.[WCI-AssignedUserIDBJ], 

    t1.[Buy-fromVendorNo_],
    t1.[Pay-toVendorNo_],

    t1.[CurrencyCode],
    t1.[FiscalInvoiceNumberPAC],
    t1.[LocationCode],
    t1.[Applies-toDoc_Type],
    t1.[Applies-toDoc_No_],
    t1.[TaxAreaCode],
    t1.[TaxLiable],
    t1.[TaxExemptionNo_],
    t1.[DimensionSetID],
    t1.[ProvincialTaxAreaCode],
    t1.[ShortcutDimension1Code],
    t1.[ShortcutDimension2Code],

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
from [stg].[BC_BJAuctionCompany_PurchCrMemoHdr_0972_FinalView] t1
left join [stg].[BC_BJAuctionCompany_PurchCrMemoHdr_8d9d_FinalView] t2
on t1.No_=t2.No_