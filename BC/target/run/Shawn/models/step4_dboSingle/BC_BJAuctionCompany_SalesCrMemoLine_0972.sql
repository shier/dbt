
  
  if object_id ('"dbo"."BC_BJAuctionCompany_SalesCrMemoLine_0972__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."BC_BJAuctionCompany_SalesCrMemoLine_0972__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."BC_BJAuctionCompany_SalesCrMemoLine_0972__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."BC_BJAuctionCompany_SalesCrMemoLine_0972__dbt_tmp"
    end


   EXEC('create view dbo.BC_BJAuctionCompany_SalesCrMemoLine_0972__dbt_tmp_temp_view as
    
Select
	cast([Pmt_DiscountAmount] as numeric(19,4)) [Pmt_DiscountAmount],
	cast([Qty_perUnitofMeasure] as numeric(19,4)) [Qty_perUnitofMeasure],
	cast([GrossWeight] as numeric(19,4)) [GrossWeight],
	cast([Amount] as numeric(19,4)) [Amount],
	cast([UnitCost] as numeric(19,4)) [UnitCost],
	cast([UnitCostLCY] as numeric(19,4)) [UnitCostLCY],
	cast([Quantity] as numeric(19,4)) [Quantity],
	cast([$systemModifiedAt] as datetime) [$systemModifiedAt],
	cast([ShipmentDate] as datetime) [ShipmentDate],
	cast([TaxLiable] as int) [TaxLiable],
	cast([Appl_-toItemEntry] as int) [Appl_-toItemEntry],
	cast([Depr_untilFAPostingDate] as int) [Depr_untilFAPostingDate],
	cast([DimensionSetID] as int) [DimensionSetID],
	cast([ICPartnerRef_Type] as int) [ICPartnerRef_Type],
	cast([AllowLineDisc_] as int) [AllowLineDisc_],
	cast([Cross-ReferenceType] as int) [Cross-ReferenceType],
	cast([ItemReferenceType] as int) [ItemReferenceType],
	cast([Type] as int) [Type],
	cast([ShortcutDimension2Code] as nvarchar(4000)) [ShortcutDimension2Code],
	cast([UnitofMeasure] as nvarchar(4000)) [UnitofMeasure],
	cast([PostingGroup] as nvarchar(4000)) [PostingGroup],
	cast([Gen_Bus_PostingGroup] as nvarchar(4000)) [Gen_Bus_PostingGroup],
	cast([ExitPoint] as nvarchar(4000)) [ExitPoint],
	cast([TransactionType] as nvarchar(4000)) [TransactionType],
	cast([BlanketOrderNo_] as nvarchar(4000)) [BlanketOrderNo_],
	cast([VATBus_PostingGroup] as nvarchar(4000)) [VATBus_PostingGroup],
	cast([TaxGroupCode] as nvarchar(4000)) [TaxGroupCode],
	cast([BinCode] as nvarchar(4000)) [BinCode],
	cast([ICPartnerCode] as nvarchar(4000)) [ICPartnerCode],
	cast([UnitofMeasureCrossRef_] as nvarchar(4000)) [UnitofMeasureCrossRef_],
	cast([ResponsibilityCenter] as nvarchar(4000)) [ResponsibilityCenter],
	cast([DepreciationBookCode] as nvarchar(4000)) [DepreciationBookCode],
	cast([ReturnReasonCode] as nvarchar(4000)) [ReturnReasonCode],
	cast([ProductGroupCode] as nvarchar(4000)) [ProductGroupCode],
	cast([ICItemReferenceNo_] as nvarchar(4000)) [ICItemReferenceNo_],
	cast([OrderNo_] as nvarchar(4000)) [OrderNo_],
	cast([TaxCategory] as nvarchar(4000)) [TaxCategory],
	cast([$systemModifiedBy] as nvarchar(4000)) [$systemModifiedBy],
	cast([ItemReferenceUnitofMeasure] as nvarchar(4000)) [ItemReferenceUnitofMeasure],
	cast([LocationCode] as nvarchar(4000)) [LocationCode],
	cast([Sell-toCustomerNo_] as nvarchar(4000)) [Sell-toCustomerNo_],
	cast([QuantityBase] as numeric(19,4)) [QuantityBase],
	cast([VATDifference] as numeric(19,4)) [VATDifference],
	cast([LineDiscount_] as numeric(19,4)) [LineDiscount_],
	cast([Inv_DiscountAmount] as numeric(19,4)) [Inv_DiscountAmount],
	cast([UnitsperParcel] as numeric(19,4)) [UnitsperParcel],
	cast([FAPostingDate] as datetime) [FAPostingDate],
	cast([VATCalculationType] as int) [VATCalculationType],
	cast([Appl_-fromItemEntry] as int) [Appl_-fromItemEntry],
	cast([PriceCalculationMethod] as int) [PriceCalculationMethod],
	cast([LineDiscountCalculation] as int) [LineDiscountCalculation],
	cast([LineNo_] as int) [LineNo_],
	cast([Description] as nvarchar(4000)) [Description],
	cast([WorkTypeCode] as nvarchar(4000)) [WorkTypeCode],
	cast([CustomerPriceGroup] as nvarchar(4000)) [CustomerPriceGroup],
	cast([TransactionSpecification] as nvarchar(4000)) [TransactionSpecification],
	cast([Cross-ReferenceTypeNo_] as nvarchar(4000)) [Cross-ReferenceTypeNo_],
	cast([ItemCategoryCode] as nvarchar(4000)) [ItemCategoryCode],
	cast([ItemReferenceTypeNo_] as nvarchar(4000)) [ItemReferenceTypeNo_],
	cast([AmountIncludingVAT] as numeric(19,4)) [AmountIncludingVAT],
	cast([LineDiscountAmount] as numeric(19,4)) [LineDiscountAmount],
	cast([VATBaseAmount] as numeric(19,4)) [VATBaseAmount],
	cast([UnitVolume] as numeric(19,4)) [UnitVolume],
	cast([UnitPrice] as numeric(19,4)) [UnitPrice],
	cast([timestamp] as varbinary(8000)) [timestamp],
	cast([$systemCreatedAt] as datetime) [$systemCreatedAt],
	cast([BlanketOrderLineNo_] as int) [BlanketOrderLineNo_],
	cast([AttachedtoLineNo_] as int) [AttachedtoLineNo_],
	cast([AllowInvoiceDisc_] as int) [AllowInvoiceDisc_],
	cast([PrepaymentLine] as int) [PrepaymentLine],
	cast([System-CreatedEntry] as int) [System-CreatedEntry],
	cast([ReturnReceiptLineNo_] as int) [ReturnReceiptLineNo_],
	cast([UseDuplicationList] as int) [UseDuplicationList],
	cast([OrderLineNo_] as int) [OrderLineNo_],
	cast([ShortcutDimension1Code] as nvarchar(4000)) [ShortcutDimension1Code],
	cast([Description2] as nvarchar(4000)) [Description2],
	cast([Gen_Prod_PostingGroup] as nvarchar(4000)) [Gen_Prod_PostingGroup],
	cast([Area] as nvarchar(4000)) [Area],
	cast([VATIdentifier] as nvarchar(4000)) [VATIdentifier],
	cast([VATProd_PostingGroup] as nvarchar(4000)) [VATProd_PostingGroup],
	cast([VariantCode] as nvarchar(4000)) [VariantCode],
	cast([JobTaskNo_] as nvarchar(4000)) [JobTaskNo_],
	cast([ICPartnerReference] as nvarchar(4000)) [ICPartnerReference],
	cast([Cross-ReferenceNo_] as nvarchar(4000)) [Cross-ReferenceNo_],
	cast([DuplicateinDepreciationBook] as nvarchar(4000)) [DuplicateinDepreciationBook],
	cast([ReturnReceiptNo_] as nvarchar(4000)) [ReturnReceiptNo_],
	cast([PurchasingCode] as nvarchar(4000)) [PurchasingCode],
	cast([$systemId] as nvarchar(4000)) [$systemId],
	cast([DeferralCode] as nvarchar(4000)) [DeferralCode],
	cast([PackageTrackingNo_] as nvarchar(4000)) [PackageTrackingNo_],
	cast([$systemCreatedBy] as nvarchar(4000)) [$systemCreatedBy],
	cast([ItemReferenceNo_] as nvarchar(4000)) [ItemReferenceNo_],
	cast([No_] as nvarchar(4000)) [No_],
	cast([DocumentNo_] as nvarchar(4000)) [DocumentNo_],
	cast([NetWeight] as numeric(19,4)) [NetWeight],
	cast([LineAmount] as numeric(19,4)) [LineAmount],
	cast([VAT_] as numeric(19,4)) [VAT_],
	cast([PostingDate] as datetime) [PostingDate],
	cast([JobContractEntryNo_] as int) [JobContractEntryNo_],
	cast([Nonstock] as int) [Nonstock],
	cast([Bill-toCustomerNo_] as nvarchar(4000)) [Bill-toCustomerNo_],
	cast([JobNo_] as nvarchar(4000)) [JobNo_],
	cast([TaxAreaCode] as nvarchar(4000)) [TaxAreaCode],
	cast([TransportMethod] as nvarchar(4000)) [TransportMethod],
	cast([VATClauseCode] as nvarchar(4000)) [VATClauseCode],
	cast([UnitofMeasureCode] as nvarchar(4000)) [UnitofMeasureCode],
	cast([CustomerDisc_Group] as nvarchar(4000)) [CustomerDisc_Group] 
From stg.[BC_BJAuctionCompany_SalesCrMemoLine_0972_FinalView]
    ');

  CREATE TABLE "dbo"."BC_BJAuctionCompany_SalesCrMemoLine_0972__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.BC_BJAuctionCompany_SalesCrMemoLine_0972__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."BC_BJAuctionCompany_SalesCrMemoLine_0972__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."BC_BJAuctionCompany_SalesCrMemoLine_0972__dbt_tmp_temp_view"
    end


