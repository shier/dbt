
  
  if object_id ('"dbo"."BC_BJAuctionCompany_SalesCRLine_FT__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."BC_BJAuctionCompany_SalesCRLine_FT__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."BC_BJAuctionCompany_SalesCRLine_FT__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."BC_BJAuctionCompany_SalesCRLine_FT__dbt_tmp"
    end


   EXEC('create view dbo.BC_BJAuctionCompany_SalesCRLine_FT__dbt_tmp_temp_view as
    
SELECT
    [DocumentNo_],

    [LineNo_],
    [Type],
    [No_],
    [Cross-ReferenceNo_],
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
    [ReturnReasonCode],

    [UnitPrice],
    [UnitCost],
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

FROM [stg].[BC_BJAuctionCompany_SalesCrMemoLine_0972_FinalView]
    ');

  CREATE TABLE "dbo"."BC_BJAuctionCompany_SalesCRLine_FT__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.BC_BJAuctionCompany_SalesCRLine_FT__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."BC_BJAuctionCompany_SalesCRLine_FT__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."BC_BJAuctionCompany_SalesCRLine_FT__dbt_tmp_temp_view"
    end


