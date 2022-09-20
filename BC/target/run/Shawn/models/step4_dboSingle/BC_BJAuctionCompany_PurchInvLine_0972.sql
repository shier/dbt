
  
  if object_id ('"dbo"."BC_BJAuctionCompany_PurchInvLine_0972__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."BC_BJAuctionCompany_PurchInvLine_0972__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."BC_BJAuctionCompany_PurchInvLine_0972__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."BC_BJAuctionCompany_PurchInvLine_0972__dbt_tmp"
    end


   EXEC('create view dbo.BC_BJAuctionCompany_PurchInvLine_0972__dbt_tmp_temp_view as
    
Select
	cast([$systemCreatedBy] as nvarchar(4000)) [$systemCreatedBy],
	cast([ItemReferenceNo_] as nvarchar(4000)) [ItemReferenceNo_],
	cast([DocumentNo_] as nvarchar(4000)) [DocumentNo_],
	cast([Description2] as nvarchar(4000)) [Description2],
	cast([LocationCode] as nvarchar(4000)) [LocationCode],
	cast([Gen_Prod_PostingGroup] as nvarchar(4000)) [Gen_Prod_PostingGroup],
	cast([ShortcutDimension1Code] as nvarchar(4000)) [ShortcutDimension1Code],
	cast([TransportMethod] as nvarchar(4000)) [TransportMethod],
	cast([ICPartnerReference] as nvarchar(4000)) [ICPartnerReference],
	cast([BlanketOrderNo_] as nvarchar(4000)) [BlanketOrderNo_],
	cast([TaxGroupCode] as nvarchar(4000)) [TaxGroupCode],
	cast([DepreciationBookCode] as nvarchar(4000)) [DepreciationBookCode],
	cast([VariantCode] as nvarchar(4000)) [VariantCode],
	cast([UnitofMeasureCrossRef_] as nvarchar(4000)) [UnitofMeasureCrossRef_],
	cast([ResponsibilityCenter] as nvarchar(4000)) [ResponsibilityCenter],
	cast([InsuranceNo_] as nvarchar(4000)) [InsuranceNo_],
	cast([ReturnReasonCode] as nvarchar(4000)) [ReturnReasonCode],
	cast([PurchasingCode] as nvarchar(4000)) [PurchasingCode],
	cast([ICPartnerCode] as nvarchar(4000)) [ICPartnerCode],
	cast([ReceiptNo_] as nvarchar(4000)) [ReceiptNo_],
	cast([ICCross-ReferenceNo_] as nvarchar(4000)) [ICCross-ReferenceNo_],
	cast([OrderNo_] as nvarchar(4000)) [OrderNo_],
	cast([ProvincialTaxAreaCode] as nvarchar(4000)) [ProvincialTaxAreaCode],
	cast([$systemModifiedAt] as datetime) [$systemModifiedAt],
	cast([ExpectedReceiptDate] as datetime) [ExpectedReceiptDate],
	cast([System-CreatedEntry] as int) [System-CreatedEntry],
	cast([UseTax] as int) [UseTax],
	cast([FAPostingType] as int) [FAPostingType],
	cast([PrepaymentLine] as int) [PrepaymentLine],
	cast([OrderLineNo_] as int) [OrderLineNo_],
	cast([VATCalculationType] as int) [VATCalculationType],
	cast([AllowInvoiceDisc_] as int) [AllowInvoiceDisc_],
	cast([LineNo_] as int) [LineNo_],
	cast([GrossWeight] as numeric(19,4)) [GrossWeight],
	cast([AmountIncludingVAT] as numeric(19,4)) [AmountIncludingVAT],
	cast([UnitCost] as numeric(19,4)) [UnitCost],
	cast([IndirectCost_] as numeric(19,4)) [IndirectCost_],
	cast([OverheadRate] as numeric(19,4)) [OverheadRate],
	cast([QuantityBase] as numeric(19,4)) [QuantityBase],
	cast([VATDifference] as numeric(19,4)) [VATDifference],
	cast([JobUnitPriceLCY] as numeric(19,4)) [JobUnitPriceLCY],
	cast([JobLineDiscountAmount] as numeric(19,4)) [JobLineDiscountAmount],
	cast([LineDiscount_] as numeric(19,4)) [LineDiscount_],
	cast([UnitCostLCY] as numeric(19,4)) [UnitCostLCY],
	cast([Quantity] as numeric(19,4)) [Quantity],
	cast([ItemReferenceUnitofMeasure] as nvarchar(4000)) [ItemReferenceUnitofMeasure],
	cast([PostingGroup] as nvarchar(4000)) [PostingGroup],
	cast([VendorItemNo_] as nvarchar(4000)) [VendorItemNo_],
	cast([ShortcutDimension2Code] as nvarchar(4000)) [ShortcutDimension2Code],
	cast([TransactionSpecification] as nvarchar(4000)) [TransactionSpecification],
	cast([EntryPoint] as nvarchar(4000)) [EntryPoint],
	cast([BinCode] as nvarchar(4000)) [BinCode],
	cast([BudgetedFANo_] as nvarchar(4000)) [BudgetedFANo_],
	cast([RoutingNo_] as nvarchar(4000)) [RoutingNo_],
	cast([Cross-ReferenceTypeNo_] as nvarchar(4000)) [Cross-ReferenceTypeNo_],
	cast([OperationNo_] as nvarchar(4000)) [OperationNo_],
	cast([DeferralCode] as nvarchar(4000)) [DeferralCode],
	cast([JobCurrencyCode] as nvarchar(4000)) [JobCurrencyCode],
	cast([$systemCreatedAt] as datetime) [$systemCreatedAt],
	cast([FAPostingDate] as datetime) [FAPostingDate],
	cast([TaxLiable] as int) [TaxLiable],
	cast([Nonstock] as int) [Nonstock],
	cast([UseDuplicationList] as int) [UseDuplicationList],
	cast([Depr_untilFAPostingDate] as int) [Depr_untilFAPostingDate],
	cast([DimensionSetID] as int) [DimensionSetID],
	cast([ReceiptLineNo_] as int) [ReceiptLineNo_],
	cast([Prod_OrderLineNo_] as int) [Prod_OrderLineNo_],
	cast([PriceCalculationMethod] as int) [PriceCalculationMethod],
	cast([UnitPriceLCY] as numeric(19,4)) [UnitPriceLCY],
	cast([Amount] as numeric(19,4)) [Amount],
	cast([Inv_DiscountAmount] as numeric(19,4)) [Inv_DiscountAmount],
	cast([UnitVolume] as numeric(19,4)) [UnitVolume],
	cast([JobLineDiscount_] as numeric(19,4)) [JobLineDiscount_],
	cast([JobLineAmount] as numeric(19,4)) [JobLineAmount],
	cast([JobUnitPrice] as numeric(19,4)) [JobUnitPrice],
	cast([JobCurrencyFactor] as numeric(19,4)) [JobCurrencyFactor],
	cast([JobLineAmountLCY] as numeric(19,4)) [JobLineAmountLCY],
	cast([timestamp] as varbinary(8000)) [timestamp],
	cast([$systemModifiedBy] as nvarchar(4000)) [$systemModifiedBy],
	cast([ItemReferenceTypeNo_] as nvarchar(4000)) [ItemReferenceTypeNo_],
	cast([Buy-fromVendorNo_] as nvarchar(4000)) [Buy-fromVendorNo_],
	cast([UnitofMeasure] as nvarchar(4000)) [UnitofMeasure],
	cast([Description] as nvarchar(4000)) [Description],
	cast([No_] as nvarchar(4000)) [No_],
	cast([Gen_Bus_PostingGroup] as nvarchar(4000)) [Gen_Bus_PostingGroup],
	cast([JobNo_] as nvarchar(4000)) [JobNo_],
	cast([TaxAreaCode] as nvarchar(4000)) [TaxAreaCode],
	cast([Area] as nvarchar(4000)) [Area],
	cast([TransactionType] as nvarchar(4000)) [TransactionType],
	cast([VATIdentifier] as nvarchar(4000)) [VATIdentifier],
	cast([VATBus_PostingGroup] as nvarchar(4000)) [VATBus_PostingGroup],
	cast([MaintenanceCode] as nvarchar(4000)) [MaintenanceCode],
	cast([Prod_OrderNo_] as nvarchar(4000)) [Prod_OrderNo_],
	cast([ProductGroupCode] as nvarchar(4000)) [ProductGroupCode],
	cast([Pay-toVendorNo_] as nvarchar(4000)) [Pay-toVendorNo_],
	cast([WorkCenterNo_] as nvarchar(4000)) [WorkCenterNo_],
	cast([$systemId] as nvarchar(4000)) [$systemId],
	cast([ICPartnerRef_Type] as int) [ICPartnerRef_Type],
	cast([BlanketOrderLineNo_] as int) [BlanketOrderLineNo_],
	cast([Depr_AcquisitionCost] as int) [Depr_AcquisitionCost],
	cast([RoutingReferenceNo_] as int) [RoutingReferenceNo_],
	cast([IRS1099Liable] as int) [IRS1099Liable],
	cast([ItemReferenceType] as int) [ItemReferenceType],
	cast([JobLineType] as int) [JobLineType],
	cast([Appl_-toItemEntry] as int) [Appl_-toItemEntry],
	cast([Type] as int) [Type],
	cast([NetWeight] as numeric(19,4)) [NetWeight],
	cast([LineDiscountAmount] as numeric(19,4)) [LineDiscountAmount],
	cast([VATBaseAmount] as numeric(19,4)) [VATBaseAmount],
	cast([UnitsperParcel] as numeric(19,4)) [UnitsperParcel],
	cast([SalvageValue] as numeric(19,4)) [SalvageValue],
	cast([Qty_perUnitofMeasure] as numeric(19,4)) [Qty_perUnitofMeasure],
	cast([LineAmount] as numeric(19,4)) [LineAmount],
	cast([JobTotalPrice] as numeric(19,4)) [JobTotalPrice],
	cast([Pmt_DiscountAmount] as numeric(19,4)) [Pmt_DiscountAmount],
	cast([JobLineDisc_AmountLCY] as numeric(19,4)) [JobLineDisc_AmountLCY],
	cast([JobTotalPriceLCY] as numeric(19,4)) [JobTotalPriceLCY],
	cast([VAT_] as numeric(19,4)) [VAT_],
	cast([DirectUnitCost] as numeric(19,4)) [DirectUnitCost],
	cast([UnitofMeasureCode] as nvarchar(4000)) [UnitofMeasureCode],
	cast([Cross-ReferenceNo_] as nvarchar(4000)) [Cross-ReferenceNo_],
	cast([ItemCategoryCode] as nvarchar(4000)) [ItemCategoryCode],
	cast([JobTaskNo_] as nvarchar(4000)) [JobTaskNo_],
	cast([PostingDate] as datetime) [PostingDate],
	cast([VATProd_PostingGroup] as nvarchar(4000)) [VATProd_PostingGroup],
	cast([DuplicateinDepreciationBook] as nvarchar(4000)) [DuplicateinDepreciationBook],
	cast([AttachedtoLineNo_] as int) [AttachedtoLineNo_],
	cast([Cross-ReferenceType] as int) [Cross-ReferenceType] 
From stg.[BC_BJAuctionCompany_PurchInvLine_0972_FinalView]
    ');

  CREATE TABLE "dbo"."BC_BJAuctionCompany_PurchInvLine_0972__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.BC_BJAuctionCompany_PurchInvLine_0972__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."BC_BJAuctionCompany_PurchInvLine_0972__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."BC_BJAuctionCompany_PurchInvLine_0972__dbt_tmp_temp_view"
    end

