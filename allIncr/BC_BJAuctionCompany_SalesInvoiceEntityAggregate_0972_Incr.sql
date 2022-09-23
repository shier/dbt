{{ config(materialized='incremental',schema='stg',unique_key='dbt_scd_id')}}
With hashData as (
		Select
			*,HASHBYTES('SHA2_256', concat([systemModifiedBy], [Bill_toCustomerId], [No], [ShipmentMethodCode], [YourReference], [Sell_toAddress2], [VATRegistrationNo], [SalespersonCode], [Sell_toCounty], [Sell_toContact], [CustomerId], [Sell_toContactNo], [TaxAreaCode], [TaxAreaID], [CurrencyId], [Ship_toCode], [Bill_toCity], [Bill_toAddress2], [Bill_toName], [Ship_toContact], [Ship_toAddress], [Sell_toPhoneNo], [Ship_toPostCode], Cast([Status] as varchar), Cast([LastEmailSentStatus] as varchar), Cast([InvoiceDiscountCalculation] as varchar), Cast([PricesIncludingVAT] as varchar), Cast([DiscountAppliedBeforeTax] as varchar), Cast([systemModifiedAt] as varchar), Cast([LastModifiedDateTime] as varchar), Cast([PostingDate] as varchar), Cast([SubtotalAmount] as varchar), Cast([InvoiceDiscountValue] as varchar), [systemId], [Sell_toCustomerName], [Sell_toCountry_RegionCode], [OrderId], [Id], [PaymentTermsId], [Ship_toAddress2], [Ship_toCounty], [Bill_toCounty], Cast([TaxLiable] as varchar), Cast([Posted] as varchar), Cast([DueDate] as varchar), Cast([Amount] as varchar), [systemCreatedBy], [Sell_toE_Mail], [CustomerPostingGroup], [PaymentTermsCode], [Sell_toCustomerNo], [Sell_toAddress], [OrderNo], [ExternalDocumentNo], [Sell_toPostCode], [Sell_toCity], [VATBus_PostingGroup], [Bill_toCustomerNo], [ShipmentMethodId], [ContactGraphId], [Bill_toContact], [Bill_toAddress], [Bill_toPostCode], [Ship_toCity], [Ship_toName], [Ship_toCountry_RegionCode], Cast([Cust_LedgerEntryNo] as varchar), Cast([IsTest] as varchar), Cast([DocumentType] as varchar), Cast([systemCreatedAt] as varchar), Cast([DocumentDate] as varchar), Cast([timestamp] as varchar), Cast([TotalTaxAmount] as varchar), Cast([InvoiceDiscountAmount] as varchar), [CurrencyCode], [Bill_toCountry_RegionCode], Cast([AmountIncludingVAT] as varchar))) as dbt_scd_id,
			CURRENT_TIMESTAMP as dbt_updated_at, 
			CURRENT_TIMESTAMP as dbt_valid_from, 
			NULL as dbt_valid_to
		From stg.[BC_BJAuctionCompany_SalesInvoiceEntityAggregate_0972_InterView]
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
