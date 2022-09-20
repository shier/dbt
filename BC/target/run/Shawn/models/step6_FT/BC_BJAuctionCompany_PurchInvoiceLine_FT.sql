
  
  if object_id ('"dbo"."BC_BJAuctionCompany_PurchInvoiceLine_FT__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."BC_BJAuctionCompany_PurchInvoiceLine_FT__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."BC_BJAuctionCompany_PurchInvoiceLine_FT__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."BC_BJAuctionCompany_PurchInvoiceLine_FT__dbt_tmp"
    end


   EXEC('create view dbo.BC_BJAuctionCompany_PurchInvoiceLine_FT__dbt_tmp_temp_view as
    
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
    ');

  CREATE TABLE "dbo"."BC_BJAuctionCompany_PurchInvoiceLine_FT__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.BC_BJAuctionCompany_PurchInvoiceLine_FT__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."BC_BJAuctionCompany_PurchInvoiceLine_FT__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."BC_BJAuctionCompany_PurchInvoiceLine_FT__dbt_tmp_temp_view"
    end


