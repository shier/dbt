{{ config(materialized='table',schema='dbo')}}
SELECT
    [DocumentNo_],

    [LineNo_],
    [Type],
    [No_],
    [DimensionSetID],
    [JobNo_],

    [Buy-fromVendorNo_],
    [Pay-toVendorNo_],

    [LocationCode],
    [PostingGroup],

    [PostingDate],
    [ExpectedReceiptDate],

    [Description],
    [Description2],
    [ShortcutDimension1Code],
    [ShortcutDimension2Code],
    [ItemCategoryCode],

    [UnitCost],
    [UnitofMeasure],
    [UnitofMeasureCode],
    [Quantity],
    [TaxAreaCode],
    [TaxLiable],
    [TaxGroupCode],
    [LineDiscount_],
    [LineAmount],
    [Amount],
    [AmountIncludingVAT],
    [DeferralCode],
    [VAT_],
    [VATBaseAmount],
    [Inv_DiscountAmount]
from [stg].[BC_BJAuctionCompany_PurchInvLine_0972_FinalView]