{{ config(materialized='incremental',schema='stg',unique_key='dbt_scd_id')}}
With hashData as (
		Select
			*,HASHBYTES('SHA2_256', concat(Cast([Pmt_DiscountAmount] as varchar), Cast([Qty_perUnitofMeasure] as varchar), Cast([GrossWeight] as varchar), Cast([Amount] as varchar), Cast([UnitCost] as varchar), Cast([UnitCostLCY] as varchar), Cast([Quantity] as varchar), Cast([systemModifiedAt] as varchar), Cast([ShipmentDate] as varchar), Cast([TaxLiable] as varchar), Cast([Appl__toItemEntry] as varchar), Cast([Depr_untilFAPostingDate] as varchar), Cast([DimensionSetID] as varchar), Cast([ICPartnerRef_Type] as varchar), Cast([AllowLineDisc] as varchar), Cast([Cross_ReferenceType] as varchar), Cast([ItemReferenceType] as varchar), Cast([Type] as varchar), [ShortcutDimension2Code], [UnitofMeasure], [PostingGroup], [Gen_Bus_PostingGroup], [ExitPoint], [TransactionType], [BlanketOrderNo], [VATBus_PostingGroup], [TaxGroupCode], [BinCode], [ICPartnerCode], [UnitofMeasureCrossRef], [ResponsibilityCenter], [DepreciationBookCode], [ReturnReasonCode], [ProductGroupCode], [ICItemReferenceNo], [OrderNo], [TaxCategory], [systemModifiedBy], [ItemReferenceUnitofMeasure], [LocationCode], [Sell_toCustomerNo], Cast([QuantityBase] as varchar), Cast([VATDifference] as varchar), Cast([LineDiscount] as varchar), Cast([Inv_DiscountAmount] as varchar), Cast([UnitsperParcel] as varchar), Cast([FAPostingDate] as varchar), Cast([VATCalculationType] as varchar), Cast([Appl__fromItemEntry] as varchar), Cast([PriceCalculationMethod] as varchar), Cast([LineDiscountCalculation] as varchar), Cast([LineNo] as varchar), [Description], [WorkTypeCode], [CustomerPriceGroup], [TransactionSpecification], [Cross_ReferenceTypeNo], [ItemCategoryCode], [ItemReferenceTypeNo], Cast([AmountIncludingVAT] as varchar), Cast([LineDiscountAmount] as varchar), Cast([VATBaseAmount] as varchar), Cast([UnitVolume] as varchar), Cast([UnitPrice] as varchar), Cast([timestamp] as varchar), Cast([systemCreatedAt] as varchar), Cast([BlanketOrderLineNo] as varchar), Cast([AttachedtoLineNo] as varchar), Cast([AllowInvoiceDisc] as varchar), Cast([PrepaymentLine] as varchar), Cast([System_CreatedEntry] as varchar), Cast([ReturnReceiptLineNo] as varchar), Cast([UseDuplicationList] as varchar), Cast([OrderLineNo] as varchar), [ShortcutDimension1Code], [Description2], [Gen_Prod_PostingGroup], [Area], [VATIdentifier], [VATProd_PostingGroup], [VariantCode], [JobTaskNo], [ICPartnerReference], [Cross_ReferenceNo], [DuplicateinDepreciationBook], [ReturnReceiptNo], [PurchasingCode], [systemId], [DeferralCode], [PackageTrackingNo], [systemCreatedBy], [ItemReferenceNo], [No], [DocumentNo], Cast([NetWeight] as varchar), Cast([LineAmount] as varchar), Cast([VAT] as varchar), Cast([PostingDate] as varchar), Cast([JobContractEntryNo] as varchar), Cast([Nonstock] as varchar), [Bill_toCustomerNo], [JobNo], [TaxAreaCode], [TransportMethod], [VATClauseCode], [UnitofMeasureCode], [CustomerDisc_Group])) as dbt_scd_id,
			CURRENT_TIMESTAMP as dbt_updated_at, 
			CURRENT_TIMESTAMP as dbt_valid_from, 
			NULL as dbt_valid_to
		From stg.[BC_BJAuctionCompany_SalesCrMemoLine_0972_InterView]
	)
Select * From hashData
{% if is_incremental() %}
	where not exists 
	(
		select dbt_scd_id 
		from {{ this }} compareData
		where hashData.dbt_scd_id=compareData.dbt_scd_id
	)
{% endif %}
