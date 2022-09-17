
  
  if object_id ('"dbo"."BC_BJAuctionCompany_SalesInvoiceLine_0972__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."BC_BJAuctionCompany_SalesInvoiceLine_0972__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."BC_BJAuctionCompany_SalesInvoiceLine_0972__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."BC_BJAuctionCompany_SalesInvoiceLine_0972__dbt_tmp"
    end


   EXEC('create view dbo.BC_BJAuctionCompany_SalesInvoiceLine_0972__dbt_tmp_temp_view as
    
Select
	cast([NetWeight] as numeric(19,4)) [NetWeight],
	cast([AmountIncludingVAT] as numeric(19,4)) [AmountIncludingVAT],
	cast([LineDiscountAmount] as numeric(19,4)) [LineDiscountAmount],
	cast([LineAmount] as numeric(19,4)) [LineAmount],
	cast([VATBaseAmount] as numeric(19,4)) [VATBaseAmount],
	cast([UnitsperParcel] as numeric(19,4)) [UnitsperParcel],
	cast([QuantityBase] as numeric(19,4)) [QuantityBase],
	cast([VATDifference] as numeric(19,4)) [VATDifference],
	cast([UnitCostLCY] as numeric(19,4)) [UnitCostLCY],
	cast([Quantity] as numeric(19,4)) [Quantity],
	cast([$systemModifiedAt] as datetime) [$systemModifiedAt],
	cast([FAPostingDate] as datetime) [FAPostingDate],
	cast([ShipmentDate] as datetime) [ShipmentDate],
	cast([DropShipment] as int) [DropShipment],
	cast([AllowInvoiceDisc_] as int) [AllowInvoiceDisc_],
	cast([PrepaymentLine] as int) [PrepaymentLine],
	cast([System-CreatedEntry] as int) [System-CreatedEntry],
	cast([TaxLiable] as int) [TaxLiable],
	cast([Cross-ReferenceType] as int) [Cross-ReferenceType],
	cast([JobContractEntryNo_] as int) [JobContractEntryNo_],
	cast([PriceCalculationMethod] as int) [PriceCalculationMethod],
	cast([OrderLineNo_] as int) [OrderLineNo_],
	cast([LineDiscountCalculation] as int) [LineDiscountCalculation],
	cast([LineNo_] as int) [LineNo_],
	cast([Description] as nvarchar(4000)) [Description],
	cast([No_] as nvarchar(4000)) [No_],
	cast([WorkTypeCode] as nvarchar(4000)) [WorkTypeCode],
	cast([ShortcutDimension2Code] as nvarchar(4000)) [ShortcutDimension2Code],
	cast([TransportMethod] as nvarchar(4000)) [TransportMethod],
	cast([Gen_Bus_PostingGroup] as nvarchar(4000)) [Gen_Bus_PostingGroup],
	cast([ShipmentNo_] as nvarchar(4000)) [ShipmentNo_],
	cast([TaxAreaCode] as nvarchar(4000)) [TaxAreaCode],
	cast([Area] as nvarchar(4000)) [Area],
	cast([ICPartnerCode] as nvarchar(4000)) [ICPartnerCode],
	cast([BlanketOrderNo_] as nvarchar(4000)) [BlanketOrderNo_],
	cast([DepreciationBookCode] as nvarchar(4000)) [DepreciationBookCode],
	cast([VariantCode] as nvarchar(4000)) [VariantCode],
	cast([ItemCategoryCode] as nvarchar(4000)) [ItemCategoryCode],
	cast([Cross-ReferenceNo_] as nvarchar(4000)) [Cross-ReferenceNo_],
	cast([DeferralCode] as nvarchar(4000)) [DeferralCode],
	cast([CustomerDisc_Group] as nvarchar(4000)) [CustomerDisc_Group],
	cast([ReturnReasonCode] as nvarchar(4000)) [ReturnReasonCode],
	cast([ItemReferenceUnitofMeasure] as nvarchar(4000)) [ItemReferenceUnitofMeasure],
	cast([ICItemReferenceNo_] as nvarchar(4000)) [ICItemReferenceNo_],
	cast([Pricedescription] as nvarchar(4000)) [Pricedescription],
	cast([ItemReferenceTypeNo_] as nvarchar(4000)) [ItemReferenceTypeNo_],
	cast([UnitVolume] as numeric(19,4)) [UnitVolume],
	cast([Appl_-toItemEntry] as int) [Appl_-toItemEntry],
	cast([Nonstock] as int) [Nonstock],
	cast([Depr_untilFAPostingDate] as int) [Depr_untilFAPostingDate],
	cast([Appl_-fromItemEntry] as int) [Appl_-fromItemEntry],
	cast([LocationCode] as nvarchar(4000)) [LocationCode],
	cast([CustomerPriceGroup] as nvarchar(4000)) [CustomerPriceGroup],
	cast([UnitofMeasure] as nvarchar(4000)) [UnitofMeasure],
	cast([Gen_Prod_PostingGroup] as nvarchar(4000)) [Gen_Prod_PostingGroup],
	cast([TaxGroupCode] as nvarchar(4000)) [TaxGroupCode],
	cast([VATIdentifier] as nvarchar(4000)) [VATIdentifier],
	cast([DuplicateinDepreciationBook] as nvarchar(4000)) [DuplicateinDepreciationBook],
	cast([BinCode] as nvarchar(4000)) [BinCode],
	cast([PurchasingCode] as nvarchar(4000)) [PurchasingCode],
	cast([UnitofMeasureCrossRef_] as nvarchar(4000)) [UnitofMeasureCrossRef_],
	cast([OrderNo_] as nvarchar(4000)) [OrderNo_],
	cast([$systemCreatedBy] as nvarchar(4000)) [$systemCreatedBy],
	cast([GrossWeight] as numeric(19,4)) [GrossWeight],
	cast([Amount] as numeric(19,4)) [Amount],
	cast([LineDiscount_] as numeric(19,4)) [LineDiscount_],
	cast([UnitCost] as numeric(19,4)) [UnitCost],
	cast([Pmt_DiscountAmount] as numeric(19,4)) [Pmt_DiscountAmount],
	cast([Qty_perUnitofMeasure] as numeric(19,4)) [Qty_perUnitofMeasure],
	cast([VAT_] as numeric(19,4)) [VAT_],
	cast([UnitPrice] as numeric(19,4)) [UnitPrice],
	cast([$systemCreatedAt] as datetime) [$systemCreatedAt],
	cast([PostingDate] as datetime) [PostingDate],
	cast([Type] as int) [Type],
	cast([ICPartnerRef_Type] as int) [ICPartnerRef_Type],
	cast([BlanketOrderLineNo_] as int) [BlanketOrderLineNo_],
	cast([UseDuplicationList] as int) [UseDuplicationList],
	cast([DimensionSetID] as int) [DimensionSetID],
	cast([ItemReferenceType] as int) [ItemReferenceType],
	cast([AllowLineDisc_] as int) [AllowLineDisc_],
	cast([Description2] as nvarchar(4000)) [Description2],
	cast([PostingGroup] as nvarchar(4000)) [PostingGroup],
	cast([Sell-toCustomerNo_] as nvarchar(4000)) [Sell-toCustomerNo_],
	cast([JobNo_] as nvarchar(4000)) [JobNo_],
	cast([ShortcutDimension1Code] as nvarchar(4000)) [ShortcutDimension1Code],
	cast([TransactionType] as nvarchar(4000)) [TransactionType],
	cast([Bill-toCustomerNo_] as nvarchar(4000)) [Bill-toCustomerNo_],
	cast([VATClauseCode] as nvarchar(4000)) [VATClauseCode],
	cast([TransactionSpecification] as nvarchar(4000)) [TransactionSpecification],
	cast([ExitPoint] as nvarchar(4000)) [ExitPoint],
	cast([VATProd_PostingGroup] as nvarchar(4000)) [VATProd_PostingGroup],
	cast([VATBus_PostingGroup] as nvarchar(4000)) [VATBus_PostingGroup],
	cast([UnitofMeasureCode] as nvarchar(4000)) [UnitofMeasureCode],
	cast([JobTaskNo_] as nvarchar(4000)) [JobTaskNo_],
	cast([ResponsibilityCenter] as nvarchar(4000)) [ResponsibilityCenter],
	cast([TaxCategory] as nvarchar(4000)) [TaxCategory],
	cast([PackageTrackingNo_] as nvarchar(4000)) [PackageTrackingNo_],
	cast([ProductGroupCode] as nvarchar(4000)) [ProductGroupCode],
	cast([$systemId] as nvarchar(4000)) [$systemId],
	cast([$systemModifiedBy] as nvarchar(4000)) [$systemModifiedBy],
	cast([DocumentNo_] as nvarchar(4000)) [DocumentNo_],
	cast([VATCalculationType] as int) [VATCalculationType],
	cast([ShipmentLineNo_] as int) [ShipmentLineNo_],
	cast([Inv_DiscountAmount] as numeric(19,4)) [Inv_DiscountAmount],
	cast([timestamp] as varbinary(8000)) [timestamp],
	cast([AttachedtoLineNo_] as int) [AttachedtoLineNo_],
	cast([ICPartnerReference] as nvarchar(4000)) [ICPartnerReference],
	cast([Cross-ReferenceTypeNo_] as nvarchar(4000)) [Cross-ReferenceTypeNo_],
	cast([ItemReferenceNo_] as nvarchar(4000)) [ItemReferenceNo_] 
From stg.[BC_BJAuctionCompany_SalesInvoiceLine_0972_FinalView]
    ');

  CREATE TABLE "dbo"."BC_BJAuctionCompany_SalesInvoiceLine_0972__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.BC_BJAuctionCompany_SalesInvoiceLine_0972__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."BC_BJAuctionCompany_SalesInvoiceLine_0972__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."BC_BJAuctionCompany_SalesInvoiceLine_0972__dbt_tmp_temp_view"
    end


