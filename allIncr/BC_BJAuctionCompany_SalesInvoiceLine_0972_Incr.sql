{{ config(materialized='incremental',schema='stg',unique_key='dbt_scd_id')}}
With hashData as (
		Select
			*,HASHBYTES('SHA2_256', concat(Cast([NetWeight] as varchar), Cast([AmountIncludingVAT] as varchar), Cast([LineDiscountAmount] as varchar), Cast([LineAmount] as varchar), Cast([VATBaseAmount] as varchar), Cast([UnitsperParcel] as varchar), Cast([QuantityBase] as varchar), Cast([VATDifference] as varchar), Cast([UnitCostLCY] as varchar), Cast([Quantity] as varchar), Cast([systemModifiedAt] as varchar), Cast([FAPostingDate] as varchar), Cast([ShipmentDate] as varchar), Cast([DropShipment] as varchar), Cast([AllowInvoiceDisc] as varchar), Cast([PrepaymentLine] as varchar), Cast([System_CreatedEntry] as varchar), Cast([TaxLiable] as varchar), Cast([Cross_ReferenceType] as varchar), Cast([JobContractEntryNo] as varchar), Cast([PriceCalculationMethod] as varchar), Cast([OrderLineNo] as varchar), Cast([LineDiscountCalculation] as varchar), Cast([LineNo] as varchar), [Description], [No], [WorkTypeCode], [ShortcutDimension2Code], [TransportMethod], [Gen_Bus_PostingGroup], [ShipmentNo], [TaxAreaCode], [Area], [ICPartnerCode], [BlanketOrderNo], [DepreciationBookCode], [VariantCode], [ItemCategoryCode], [Cross_ReferenceNo], [DeferralCode], [CustomerDisc_Group], [ReturnReasonCode], [ItemReferenceUnitofMeasure], [ICItemReferenceNo], [Pricedescription], [ItemReferenceTypeNo], Cast([UnitVolume] as varchar), Cast([Appl__toItemEntry] as varchar), Cast([Nonstock] as varchar), Cast([Depr_untilFAPostingDate] as varchar), Cast([Appl__fromItemEntry] as varchar), [LocationCode], [CustomerPriceGroup], [UnitofMeasure], [Gen_Prod_PostingGroup], [TaxGroupCode], [VATIdentifier], [DuplicateinDepreciationBook], [BinCode], [PurchasingCode], [UnitofMeasureCrossRef], [OrderNo], [systemCreatedBy], Cast([GrossWeight] as varchar), Cast([Amount] as varchar), Cast([LineDiscount] as varchar), Cast([UnitCost] as varchar), Cast([Pmt_DiscountAmount] as varchar), Cast([Qty_perUnitofMeasure] as varchar), Cast([VAT] as varchar), Cast([UnitPrice] as varchar), Cast([systemCreatedAt] as varchar), Cast([PostingDate] as varchar), Cast([Type] as varchar), Cast([ICPartnerRef_Type] as varchar), Cast([BlanketOrderLineNo] as varchar), Cast([UseDuplicationList] as varchar), Cast([DimensionSetID] as varchar), Cast([ItemReferenceType] as varchar), Cast([AllowLineDisc] as varchar), [Description2], [PostingGroup], [Sell_toCustomerNo], [JobNo], [ShortcutDimension1Code], [TransactionType], [Bill_toCustomerNo], [VATClauseCode], [TransactionSpecification], [ExitPoint], [VATProd_PostingGroup], [VATBus_PostingGroup], [UnitofMeasureCode], [JobTaskNo], [ResponsibilityCenter], [TaxCategory], [PackageTrackingNo], [ProductGroupCode], [systemId], [systemModifiedBy], [DocumentNo], Cast([VATCalculationType] as varchar), Cast([ShipmentLineNo] as varchar), Cast([Inv_DiscountAmount] as varchar), Cast([timestamp] as varchar), Cast([AttachedtoLineNo] as varchar), [ICPartnerReference], [Cross_ReferenceTypeNo], [ItemReferenceNo])) as dbt_scd_id,
			CURRENT_TIMESTAMP as dbt_updated_at, 
			CURRENT_TIMESTAMP as dbt_valid_from, 
			NULL as dbt_valid_to
		From stg.[BC_BJAuctionCompany_SalesInvoiceLine_0972_InterView]
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
