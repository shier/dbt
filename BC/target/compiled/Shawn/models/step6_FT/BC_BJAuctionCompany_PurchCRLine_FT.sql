
SELECT
    [DocumentNo_],

    [LineNo_],
    [Type],
    [No_],
    [Cross-ReferenceNo_],
    [DimensionSetID],
    [JobNo_],
    [ItemCategoryCode],

    [Buy-fromVendorNo_],

    [LocationCode],
    [PostingGroup],

    [ExpectedReceiptDate],
    [PostingDate],

    [Description],
    [Description2],
    [ShortcutDimension1Code],
    [ShortcutDimension2Code],
    [ReturnReasonCode],

    [UnitCost],
    [UnitofMeasure],
    [UnitofMeasureCode],
    [Quantity],
    [TaxAreaCode],
    [TaxLiable],
    [TaxGroupCode],
    [DirectUnitCost],
    [LineAmount],
    [LineDiscount_],
    [Amount],
    [AmountIncludingVAT],
    [VAT_],
    [VATBaseAmount],
    [DeferralCode],
    [Inv_DiscountAmount],
    [VATCalculationType],
    [AttachedtoLineNo_],
    [Qty_perUnitofMeasure],
    [QuantityBase]
from [stg].[BC_BJAuctionCompany_PurchCrMemoLine_0972_FinalView]