{{ config(materialized='table',schema='dbo')}}
SELECT
    [DocumentNo_],

    [LineNo_],
    [Type],
    [No_],
    [DimensionSetID],
    [JobNo_],

    [Sell-toCustomerNo_],
    [Bill-toCustomerNo_],

    [LocationCode],
    [PostingGroup],

    [PostingDate],
    [ShipmentDate],

    [Description],
    [Description2],
    [ShortcutDimension1Code],
    [ShortcutDimension2Code],

    [UnitPrice],
    [UnitofMeasure],
    [Quantity],
    [TaxAreaCode],
    [TaxLiable],
    [TaxGroupCode],
    [TaxCategory],
    [LineDiscount_],
    [LineAmount],
    [Amount],
    [AmountIncludingVAT],
    [CustomerPriceGroup],
    [DeferralCode],
    [VAT_],
    [VATBaseAmount],
    [Inv_DiscountAmount],
    [VATCalculationType],
    [AttachedtoLineNo_],
    [Qty_perUnitofMeasure],
    [QuantityBase]
From [stg].[BC_BJAuctionCompany_SalesInvoiceLine_0972_FinalView]