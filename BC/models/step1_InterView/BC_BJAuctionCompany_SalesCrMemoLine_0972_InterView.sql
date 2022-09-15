{{ config(materialized='view',schema='stg')}}
Select
	cast([$systemId] as nvarchar(4000)) [systemId],
	cast([DocumentNo_] as nvarchar(4000)) [DocumentNo],
	cast([Sell-toCustomerNo_] as nvarchar(4000)) [Sell_toCustomerNo],
	cast([No_] as nvarchar(4000)) [No],
	cast([LocationCode] as nvarchar(4000)) [LocationCode],
	cast([ItemReferenceNo_] as nvarchar(4000)) [ItemReferenceNo],
	cast([ItemReferenceUnitofMeasure] as nvarchar(4000)) [ItemReferenceUnitofMeasure],
	cast([ItemReferenceTypeNo_] as nvarchar(4000)) [ItemReferenceTypeNo],
	cast([$systemCreatedBy] as nvarchar(4000)) [systemCreatedBy],
	cast([$systemModifiedBy] as nvarchar(4000)) [systemModifiedBy],
	cast([PackageTrackingNo_] as nvarchar(4000)) [PackageTrackingNo],
	cast([TaxCategory] as nvarchar(4000)) [TaxCategory],
	cast([DeferralCode] as nvarchar(4000)) [DeferralCode],
	cast([OrderNo_] as nvarchar(4000)) [OrderNo],
	cast([ICItemReferenceNo_] as nvarchar(4000)) [ICItemReferenceNo],
	cast([ItemCategoryCode] as nvarchar(4000)) [ItemCategoryCode],
	cast([PurchasingCode] as nvarchar(4000)) [PurchasingCode],
	cast([ProductGroupCode] as nvarchar(4000)) [ProductGroupCode],
	cast([ReturnReceiptNo_] as nvarchar(4000)) [ReturnReceiptNo],
	cast([ReturnReasonCode] as nvarchar(4000)) [ReturnReasonCode],
	cast([CustomerDisc_Group] as nvarchar(4000)) [CustomerDisc_Group],
	cast([DepreciationBookCode] as nvarchar(4000)) [DepreciationBookCode],
	cast([DuplicateinDepreciationBook] as nvarchar(4000)) [DuplicateinDepreciationBook],
	cast([ResponsibilityCenter] as nvarchar(4000)) [ResponsibilityCenter],
	cast([Cross-ReferenceNo_] as nvarchar(4000)) [Cross_ReferenceNo],
	cast([UnitofMeasureCrossRef_] as nvarchar(4000)) [UnitofMeasureCrossRef],
	cast([Cross-ReferenceTypeNo_] as nvarchar(4000)) [Cross_ReferenceTypeNo],
	cast([ICPartnerReference] as nvarchar(4000)) [ICPartnerReference],
	cast([ICPartnerCode] as nvarchar(4000)) [ICPartnerCode],
	cast([JobTaskNo_] as nvarchar(4000)) [JobTaskNo],
	cast([VariantCode] as nvarchar(4000)) [VariantCode],
	cast([BinCode] as nvarchar(4000)) [BinCode],
	cast([UnitofMeasureCode] as nvarchar(4000)) [UnitofMeasureCode],
	cast([TaxGroupCode] as nvarchar(4000)) [TaxGroupCode],
	cast([VATClauseCode] as nvarchar(4000)) [VATClauseCode],
	cast([VATBus_PostingGroup] as nvarchar(4000)) [VATBus_PostingGroup],
	cast([VATProd_PostingGroup] as nvarchar(4000)) [VATProd_PostingGroup],
	cast([BlanketOrderNo_] as nvarchar(4000)) [BlanketOrderNo],
	cast([VATIdentifier] as nvarchar(4000)) [VATIdentifier],
	cast([TransactionType] as nvarchar(4000)) [TransactionType],
	cast([TransportMethod] as nvarchar(4000)) [TransportMethod],
	cast([ExitPoint] as nvarchar(4000)) [ExitPoint],
	cast([Area] as nvarchar(4000)) [Area],
	cast([TransactionSpecification] as nvarchar(4000)) [TransactionSpecification],
	cast([TaxAreaCode] as nvarchar(4000)) [TaxAreaCode],
	cast([CustomerPriceGroup] as nvarchar(4000)) [CustomerPriceGroup],
	cast([JobNo_] as nvarchar(4000)) [JobNo],
	cast([WorkTypeCode] as nvarchar(4000)) [WorkTypeCode],
	cast([Bill-toCustomerNo_] as nvarchar(4000)) [Bill_toCustomerNo],
	cast([Gen_Bus_PostingGroup] as nvarchar(4000)) [Gen_Bus_PostingGroup],
	cast([Gen_Prod_PostingGroup] as nvarchar(4000)) [Gen_Prod_PostingGroup],
	cast([PostingGroup] as nvarchar(4000)) [PostingGroup],
	cast([Description] as nvarchar(4000)) [Description],
	cast([Description2] as nvarchar(4000)) [Description2],
	cast([UnitofMeasure] as nvarchar(4000)) [UnitofMeasure],
	cast([ShortcutDimension1Code] as nvarchar(4000)) [ShortcutDimension1Code],
	cast([ShortcutDimension2Code] as nvarchar(4000)) [ShortcutDimension2Code],
	[LineNo_] as [LineNo],
	[Type] ,
	[LineDiscountCalculation] ,
	[OrderLineNo_] as [OrderLineNo],
	[ItemReferenceType] ,
	[PriceCalculationMethod] ,
	[UseDuplicationList] ,
	[Cross-ReferenceType] as [Cross_ReferenceType],
	[Nonstock] ,
	[Appl_-fromItemEntry] as [Appl__fromItemEntry],
	[ReturnReceiptLineNo_] as [ReturnReceiptLineNo],
	[AllowLineDisc_] as [AllowLineDisc],
	[System-CreatedEntry] as [System_CreatedEntry],
	[ICPartnerRef_Type] ,
	[PrepaymentLine] ,
	[DimensionSetID] ,
	[JobContractEntryNo_] as [JobContractEntryNo],
	[Depr_untilFAPostingDate] ,
	[AllowInvoiceDisc_] as [AllowInvoiceDisc],
	[Appl_-toItemEntry] as [Appl__toItemEntry],
	[VATCalculationType] ,
	[AttachedtoLineNo_] as [AttachedtoLineNo],
	[TaxLiable] ,
	[BlanketOrderLineNo_] as [BlanketOrderLineNo],
	[ShipmentDate] ,
	[PostingDate] ,
	[FAPostingDate] ,
	[$systemCreatedAt] as [systemCreatedAt],
	[$systemModifiedAt] as [systemModifiedAt],
	cast([timestamp] as nvarchar(4000)) [timestamp],
	[Quantity] ,
	[UnitPrice] ,
	[UnitCostLCY] ,
	[VAT_] as [VAT],
	[UnitsperParcel] ,
	[UnitVolume] ,
	[Inv_DiscountAmount] ,
	[VATBaseAmount] ,
	[UnitCost] ,
	[LineAmount] ,
	[LineDiscount_] as [LineDiscount],
	[LineDiscountAmount] ,
	[Amount] ,
	[AmountIncludingVAT] ,
	[GrossWeight] ,
	[NetWeight] ,
	[VATDifference] ,
	[Qty_perUnitofMeasure] ,
	[QuantityBase] ,
	[Pmt_DiscountAmount] 
From stg.[BC_BJAuctionCompany_SalesCrMemoLine_0972_Raw]
