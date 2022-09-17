
  
  if object_id ('"dbo"."BC_BJAuctionCompany_PurchCrMemoLine_0972__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."BC_BJAuctionCompany_PurchCrMemoLine_0972__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."BC_BJAuctionCompany_PurchCrMemoLine_0972__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."BC_BJAuctionCompany_PurchCrMemoLine_0972__dbt_tmp"
    end


   EXEC('create view dbo.BC_BJAuctionCompany_PurchCrMemoLine_0972__dbt_tmp_temp_view as
    
Select
	cast([AmountIncludingVAT] as numeric(19,4)) [AmountIncludingVAT],
	cast([LineDiscountAmount] as numeric(19,4)) [LineDiscountAmount],
	cast([VATBaseAmount] as numeric(19,4)) [VATBaseAmount],
	cast([UnitsperParcel] as numeric(19,4)) [UnitsperParcel],
	cast([SalvageValue] as numeric(19,4)) [SalvageValue],
	cast([LineAmount] as numeric(19,4)) [LineAmount],
	cast([JobUnitPriceLCY] as numeric(19,4)) [JobUnitPriceLCY],
	cast([JobTotalPrice] as numeric(19,4)) [JobTotalPrice],
	cast([JobCurrencyFactor] as numeric(19,4)) [JobCurrencyFactor],
	cast([$systemCreatedAt] as datetime) [$systemCreatedAt],
	cast([FAPostingDate] as datetime) [FAPostingDate],
	cast([ICPartnerRef_Type] as int) [ICPartnerRef_Type],
	cast([TaxLiable] as int) [TaxLiable],
	cast([Nonstock] as int) [Nonstock],
	cast([UseDuplicationList] as int) [UseDuplicationList],
	cast([ReturnShipmentLineNo_] as int) [ReturnShipmentLineNo_],
	cast([DimensionSetID] as int) [DimensionSetID],
	cast([IRS1099Liable] as int) [IRS1099Liable],
	cast([ItemReferenceType] as int) [ItemReferenceType],
	cast([AllowInvoiceDisc_] as int) [AllowInvoiceDisc_],
	cast([ShortcutDimension1Code] as nvarchar(4000)) [ShortcutDimension1Code],
	cast([Description2] as nvarchar(4000)) [Description2],
	cast([TransportMethod] as nvarchar(4000)) [TransportMethod],
	cast([Gen_Bus_PostingGroup] as nvarchar(4000)) [Gen_Bus_PostingGroup],
	cast([VATBus_PostingGroup] as nvarchar(4000)) [VATBus_PostingGroup],
	cast([TaxAreaCode] as nvarchar(4000)) [TaxAreaCode],
	cast([TransactionSpecification] as nvarchar(4000)) [TransactionSpecification],
	cast([VariantCode] as nvarchar(4000)) [VariantCode],
	cast([BlanketOrderNo_] as nvarchar(4000)) [BlanketOrderNo_],
	cast([BudgetedFANo_] as nvarchar(4000)) [BudgetedFANo_],
	cast([DepreciationBookCode] as nvarchar(4000)) [DepreciationBookCode],
	cast([ItemCategoryCode] as nvarchar(4000)) [ItemCategoryCode],
	cast([Cross-ReferenceNo_] as nvarchar(4000)) [Cross-ReferenceNo_],
	cast([ICPartnerCode] as nvarchar(4000)) [ICPartnerCode],
	cast([ReturnReasonCode] as nvarchar(4000)) [ReturnReasonCode],
	cast([OrderNo_] as nvarchar(4000)) [OrderNo_],
	cast([ProvincialTaxAreaCode] as nvarchar(4000)) [ProvincialTaxAreaCode],
	cast([JobCurrencyCode] as nvarchar(4000)) [JobCurrencyCode],
	cast([ItemReferenceTypeNo_] as nvarchar(4000)) [ItemReferenceTypeNo_],
	cast([ItemReferenceNo_] as nvarchar(4000)) [ItemReferenceNo_],
	cast([timestamp] as varbinary(8000)) [timestamp],
	cast([No_] as nvarchar(4000)) [No_],
	cast([DocumentNo_] as nvarchar(4000)) [DocumentNo_],
	cast([NetWeight] as numeric(19,4)) [NetWeight],
	cast([IndirectCost_] as numeric(19,4)) [IndirectCost_],
	cast([Qty_perUnitofMeasure] as numeric(19,4)) [Qty_perUnitofMeasure],
	cast([JobLineDiscountAmount] as numeric(19,4)) [JobLineDiscountAmount],
	cast([JobLineAmountLCY] as numeric(19,4)) [JobLineAmountLCY],
	cast([VAT_] as numeric(19,4)) [VAT_],
	cast([DirectUnitCost] as numeric(19,4)) [DirectUnitCost],
	cast([$systemModifiedAt] as datetime) [$systemModifiedAt],
	cast([BlanketOrderLineNo_] as int) [BlanketOrderLineNo_],
	cast([Depr_untilFAPostingDate] as int) [Depr_untilFAPostingDate],
	cast([OrderLineNo_] as int) [OrderLineNo_],
	cast([Appl_-toItemEntry] as int) [Appl_-toItemEntry],
	cast([Type] as int) [Type],
	cast([ShortcutDimension2Code] as nvarchar(4000)) [ShortcutDimension2Code],
	cast([Description] as nvarchar(4000)) [Description],
	cast([Gen_Prod_PostingGroup] as nvarchar(4000)) [Gen_Prod_PostingGroup],
	cast([VendorItemNo_] as nvarchar(4000)) [VendorItemNo_],
	cast([Area] as nvarchar(4000)) [Area],
	cast([ICPartnerReference] as nvarchar(4000)) [ICPartnerReference],
	cast([MaintenanceCode] as nvarchar(4000)) [MaintenanceCode],
	cast([UnitofMeasureCode] as nvarchar(4000)) [UnitofMeasureCode],
	cast([UnitofMeasureCrossRef_] as nvarchar(4000)) [UnitofMeasureCrossRef_],
	cast([DuplicateinDepreciationBook] as nvarchar(4000)) [DuplicateinDepreciationBook],
	cast([PurchasingCode] as nvarchar(4000)) [PurchasingCode],
	cast([$systemCreatedBy] as nvarchar(4000)) [$systemCreatedBy],
	cast([UnitPriceLCY] as numeric(19,4)) [UnitPriceLCY],
	cast([Amount] as numeric(19,4)) [Amount],
	cast([UnitCost] as numeric(19,4)) [UnitCost],
	cast([Inv_DiscountAmount] as numeric(19,4)) [Inv_DiscountAmount],
	cast([UnitVolume] as numeric(19,4)) [UnitVolume],
	cast([JobUnitPrice] as numeric(19,4)) [JobUnitPrice],
	cast([QuantityBase] as numeric(19,4)) [QuantityBase],
	cast([VATDifference] as numeric(19,4)) [VATDifference],
	cast([JobTotalPriceLCY] as numeric(19,4)) [JobTotalPriceLCY],
	cast([JobLineDiscount_] as numeric(19,4)) [JobLineDiscount_],
	cast([JobLineAmount] as numeric(19,4)) [JobLineAmount],
	cast([Pmt_DiscountAmount] as numeric(19,4)) [Pmt_DiscountAmount],
	cast([UnitCostLCY] as numeric(19,4)) [UnitCostLCY],
	cast([Quantity] as numeric(19,4)) [Quantity],
	cast([PostingDate] as datetime) [PostingDate],
	cast([ExpectedReceiptDate] as datetime) [ExpectedReceiptDate],
	cast([System-CreatedEntry] as int) [System-CreatedEntry],
	cast([UseTax] as int) [UseTax],
	cast([Depr_AcquisitionCost] as int) [Depr_AcquisitionCost],
	cast([FAPostingType] as int) [FAPostingType],
	cast([JobLineType] as int) [JobLineType],
	cast([PrepaymentLine] as int) [PrepaymentLine],
	cast([PriceCalculationMethod] as int) [PriceCalculationMethod],
	cast([VATCalculationType] as int) [VATCalculationType],
	cast([UnitofMeasure] as nvarchar(4000)) [UnitofMeasure],
	cast([TransactionType] as nvarchar(4000)) [TransactionType],
	cast([JobNo_] as nvarchar(4000)) [JobNo_],
	cast([TaxGroupCode] as nvarchar(4000)) [TaxGroupCode],
	cast([EntryPoint] as nvarchar(4000)) [EntryPoint],
	cast([Prod_OrderNo_] as nvarchar(4000)) [Prod_OrderNo_],
	cast([InsuranceNo_] as nvarchar(4000)) [InsuranceNo_],
	cast([Cross-ReferenceTypeNo_] as nvarchar(4000)) [Cross-ReferenceTypeNo_],
	cast([ResponsibilityCenter] as nvarchar(4000)) [ResponsibilityCenter],
	cast([JobTaskNo_] as nvarchar(4000)) [JobTaskNo_],
	cast([ProductGroupCode] as nvarchar(4000)) [ProductGroupCode],
	cast([$systemId] as nvarchar(4000)) [$systemId],
	cast([DeferralCode] as nvarchar(4000)) [DeferralCode],
	cast([ReturnShipmentNo_] as nvarchar(4000)) [ReturnShipmentNo_],
	cast([$systemModifiedBy] as nvarchar(4000)) [$systemModifiedBy],
	cast([ItemReferenceUnitofMeasure] as nvarchar(4000)) [ItemReferenceUnitofMeasure],
	cast([ICItemReferenceNo_] as nvarchar(4000)) [ICItemReferenceNo_],
	cast([LocationCode] as nvarchar(4000)) [LocationCode],
	cast([Buy-fromVendorNo_] as nvarchar(4000)) [Buy-fromVendorNo_],
	cast([GrossWeight] as numeric(19,4)) [GrossWeight],
	cast([JobLineDisc_AmountLCY] as numeric(19,4)) [JobLineDisc_AmountLCY],
	cast([LineDiscount_] as numeric(19,4)) [LineDiscount_],
	cast([AttachedtoLineNo_] as int) [AttachedtoLineNo_],
	cast([Cross-ReferenceType] as int) [Cross-ReferenceType],
	cast([LineNo_] as int) [LineNo_],
	cast([PostingGroup] as nvarchar(4000)) [PostingGroup],
	cast([VATIdentifier] as nvarchar(4000)) [VATIdentifier],
	cast([VATProd_PostingGroup] as nvarchar(4000)) [VATProd_PostingGroup],
	cast([BinCode] as nvarchar(4000)) [BinCode],
	cast([Pay-toVendorNo_] as nvarchar(4000)) [Pay-toVendorNo_] 
From stg.[BC_BJAuctionCompany_PurchCrMemoLine_0972_FinalView]
    ');

  CREATE TABLE "dbo"."BC_BJAuctionCompany_PurchCrMemoLine_0972__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.BC_BJAuctionCompany_PurchCrMemoLine_0972__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."BC_BJAuctionCompany_PurchCrMemoLine_0972__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."BC_BJAuctionCompany_PurchCrMemoLine_0972__dbt_tmp_temp_view"
    end


