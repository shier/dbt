{{ config(materialized='view',schema='stg')}}
Select
	cast([$systemId] as nvarchar(4000)) [systemId],
	cast([timestamp] as nvarchar(4000)) [timestamp],
	[Quantity] ,
	[DirectUnitCost] ,
	[UnitCostLCY] ,
	[VAT_] as [VAT],
	[LineDiscount_] as [LineDiscount],
	[JobTotalPriceLCY] ,
	[JobLineAmountLCY] ,
	[JobLineDisc_AmountLCY] ,
	[JobCurrencyFactor] ,
	[Pmt_DiscountAmount] ,
	[JobUnitPrice] ,
	[JobTotalPrice] ,
	[JobLineAmount] ,
	[JobLineDiscountAmount] ,
	[JobLineDiscount_] as [JobLineDiscount],
	[JobUnitPriceLCY] ,
	[LineAmount] ,
	[VATDifference] ,
	[Qty_perUnitofMeasure] ,
	[QuantityBase] ,
	[SalvageValue] ,
	[OverheadRate] ,
	[UnitsperParcel] ,
	[UnitVolume] ,
	[IndirectCost_] as [IndirectCost],
	[Inv_DiscountAmount] ,
	[VATBaseAmount] ,
	[UnitCost] ,
	[LineDiscountAmount] ,
	[Amount] ,
	[AmountIncludingVAT] ,
	[UnitPriceLCY] ,
	[GrossWeight] ,
	[NetWeight] ,
	[LineNo_] as [LineNo_S],
	[Type] ,
	[AllowInvoiceDisc_] as [AllowInvoiceDisc],
	[Appl_-toItemEntry] as [Appl__toItemEntry],
	[VATCalculationType] ,
	[JobLineType] ,
	[OrderLineNo_] as [OrderLineNo],
	[ItemReferenceType] ,
	[PriceCalculationMethod] ,
	[IRS1099Liable] ,
	[Prod_OrderLineNo_] as [Prod_OrderLineNo],
	[RoutingReferenceNo_] as [RoutingReferenceNo],
	[ReceiptLineNo_] as [ReceiptLineNo],
	[PrepaymentLine] ,
	[DimensionSetID] ,
	[FAPostingType] ,
	[Depr_untilFAPostingDate] ,
	[Depr_AcquisitionCost] ,
	[UseDuplicationList] ,
	[Cross-ReferenceType] as [Cross_ReferenceType],
	[Nonstock] ,
	[AttachedtoLineNo_] as [AttachedtoLineNo],
	[TaxLiable] ,
	[UseTax] ,
	[BlanketOrderLineNo_] as [BlanketOrderLineNo],
	[System-CreatedEntry] as [System_CreatedEntry],
	[ICPartnerRef_Type] ,
	[ExpectedReceiptDate] ,
	[FAPostingDate] ,
	[PostingDate] ,
	[$systemCreatedAt] as [systemCreatedAt],
	[$systemModifiedAt] as [systemModifiedAt],
	cast([JobCurrencyCode] as nvarchar(4000)) [JobCurrencyCode],
	cast([ProvincialTaxAreaCode] as nvarchar(4000)) [ProvincialTaxAreaCode],
	cast([DeferralCode] as nvarchar(4000)) [DeferralCode],
	cast([OrderNo_] as nvarchar(4000)) [OrderNo],
	cast([ICCross-ReferenceNo_] as nvarchar(4000)) [ICCross_ReferenceNo],
	cast([OperationNo_] as nvarchar(4000)) [OperationNo],
	cast([WorkCenterNo_] as nvarchar(4000)) [WorkCenterNo],
	cast([ReceiptNo_] as nvarchar(4000)) [ReceiptNo],
	cast([Pay-toVendorNo_] as nvarchar(4000)) [Pay_toVendorNo],
	cast([ICPartnerCode] as nvarchar(4000)) [ICPartnerCode],
	cast([JobTaskNo_] as nvarchar(4000)) [JobTaskNo],
	cast([Cross-ReferenceTypeNo_] as nvarchar(4000)) [Cross_ReferenceTypeNo],
	cast([ItemCategoryCode] as nvarchar(4000)) [ItemCategoryCode],
	cast([PurchasingCode] as nvarchar(4000)) [PurchasingCode],
	cast([ProductGroupCode] as nvarchar(4000)) [ProductGroupCode],
	cast([ReturnReasonCode] as nvarchar(4000)) [ReturnReasonCode],
	cast([RoutingNo_] as nvarchar(4000)) [RoutingNo],
	cast([InsuranceNo_] as nvarchar(4000)) [InsuranceNo],
	cast([BudgetedFANo_] as nvarchar(4000)) [BudgetedFANo],
	cast([DuplicateinDepreciationBook] as nvarchar(4000)) [DuplicateinDepreciationBook],
	cast([ResponsibilityCenter] as nvarchar(4000)) [ResponsibilityCenter],
	cast([Cross-ReferenceNo_] as nvarchar(4000)) [Cross_ReferenceNo],
	cast([UnitofMeasureCrossRef_] as nvarchar(4000)) [UnitofMeasureCrossRef],
	cast([Prod_OrderNo_] as nvarchar(4000)) [Prod_OrderNo],
	cast([VariantCode] as nvarchar(4000)) [VariantCode],
	cast([BinCode] as nvarchar(4000)) [BinCode],
	cast([UnitofMeasureCode] as nvarchar(4000)) [UnitofMeasureCode],
	cast([DepreciationBookCode] as nvarchar(4000)) [DepreciationBookCode],
	cast([MaintenanceCode] as nvarchar(4000)) [MaintenanceCode],
	cast([TaxGroupCode] as nvarchar(4000)) [TaxGroupCode],
	cast([VATBus_PostingGroup] as nvarchar(4000)) [VATBus_PostingGroup],
	cast([VATProd_PostingGroup] as nvarchar(4000)) [VATProd_PostingGroup],
	cast([BlanketOrderNo_] as nvarchar(4000)) [BlanketOrderNo],
	cast([VATIdentifier] as nvarchar(4000)) [VATIdentifier],
	cast([ICPartnerReference] as nvarchar(4000)) [ICPartnerReference],
	cast([TransactionType] as nvarchar(4000)) [TransactionType],
	cast([TransportMethod] as nvarchar(4000)) [TransportMethod],
	cast([EntryPoint] as nvarchar(4000)) [EntryPoint],
	cast([Area] as nvarchar(4000)) [Area],
	cast([TransactionSpecification] as nvarchar(4000)) [TransactionSpecification],
	cast([TaxAreaCode] as nvarchar(4000)) [TaxAreaCode],
	cast([ShortcutDimension1Code] as nvarchar(4000)) [ShortcutDimension1Code],
	cast([ShortcutDimension2Code] as nvarchar(4000)) [ShortcutDimension2Code],
	cast([JobNo_] as nvarchar(4000)) [JobNo],
	cast([VendorItemNo_] as nvarchar(4000)) [VendorItemNo],
	cast([Gen_Bus_PostingGroup] as nvarchar(4000)) [Gen_Bus_PostingGroup],
	cast([Gen_Prod_PostingGroup] as nvarchar(4000)) [Gen_Prod_PostingGroup],
	cast([No_] as nvarchar(4000)) [No],
	cast([LocationCode] as nvarchar(4000)) [LocationCode],
	cast([PostingGroup] as nvarchar(4000)) [PostingGroup],
	cast([Description] as nvarchar(4000)) [Description],
	cast([Description2] as nvarchar(4000)) [Description2],
	cast([UnitofMeasure] as nvarchar(4000)) [UnitofMeasure],
	cast([DocumentNo_] as nvarchar(4000)) [DocumentNo],
	cast([Buy-fromVendorNo_] as nvarchar(4000)) [Buy_fromVendorNo],
	cast([ItemReferenceNo_] as nvarchar(4000)) [ItemReferenceNo],
	cast([ItemReferenceUnitofMeasure] as nvarchar(4000)) [ItemReferenceUnitofMeasure],
	cast([ItemReferenceTypeNo_] as nvarchar(4000)) [ItemReferenceTypeNo],
	cast([$systemCreatedBy] as nvarchar(4000)) [systemCreatedBy],
	cast([$systemModifiedBy] as nvarchar(4000)) [systemModifiedBy]
From stg.[BC_BJAuctionCompany_PurchInvLine_0972_Raw]