
  
  if object_id ('"dbo"."BC_BJAuctionCompany_PurchCRLine_FT__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."BC_BJAuctionCompany_PurchCRLine_FT__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."BC_BJAuctionCompany_PurchCRLine_FT__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."BC_BJAuctionCompany_PurchCRLine_FT__dbt_tmp"
    end


   EXEC('create view dbo.BC_BJAuctionCompany_PurchCRLine_FT__dbt_tmp_temp_view as
    
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
    ');

  CREATE TABLE "dbo"."BC_BJAuctionCompany_PurchCRLine_FT__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.BC_BJAuctionCompany_PurchCRLine_FT__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."BC_BJAuctionCompany_PurchCRLine_FT__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."BC_BJAuctionCompany_PurchCRLine_FT__dbt_tmp_temp_view"
    end


