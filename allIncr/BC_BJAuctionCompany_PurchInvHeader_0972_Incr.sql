{{ config(materialized='incremental',schema='stg',unique_key='dbt_scd_id')}}
With hashData as (
		Select
			*,HASHBYTES('SHA2_256', concat([systemId], [Pay_toName2], [Pay_toVendorNo], [No], [Ship_toCode], [Ship_toAddress], [VendorPostingGroup], [VATRegistrationNo], [VendorOrderNo], [Applies_toDoc_No], [ReasonCode], [Buy_fromContact], [Buy_fromCountry_RegionCode], [Buy_fromPostCode], [Pay_toCounty], [Area], [Ship_toCounty], [PaymentMethodCode], [VATBus_PostingGroup], [CampaignNo], [CreditorNo], [STETransactionID], [Ship_toUPSZone], Cast([PriceCalculationMethod] as varchar), Cast([DimensionSetID] as varchar), Cast([TaxLiable] as varchar), Cast([Bal_AccountType] as varchar), Cast([PricesIncludingVAT] as varchar), Cast([ExpectedReceiptDate] as varchar), Cast([OrderDate] as varchar), Cast([systemCreatedAt] as varchar), Cast([PaymentDiscount] as varchar), [systemCreatedBy], [Pay_toAddress], [Pay_toName], [Ship_toName], [YourReference], [Pay_toCity], [PostingDescription], [Ship_toCity], [ShortcutDimension1Code], [ShipmentMethodCode], [OnHold], [PurchaserCode], [InvoiceDisc_Code], [Sell_toCustomerNo], [Bal_AccountNo], [Buy_fromVendorName], [TransportMethod], [Pay_toPostCode], [Buy_fromCity], [Buy_fromAddress], [Ship_toPostCode], [Buy_fromCounty], [EntryPoint], [Ship_toCountry_RegionCode], [UserID], [OrderNo_Series], [Pre_AssignedNo_Series], [QuoteNo], [PrepaymentNo_Series], [TaxAreaCode], [ResponsibilityCenter], [TaxExemptionNo], [Id], Cast([DIOT_TypeofOperation] as varchar), Cast([Correction] as varchar), Cast([Applies_toDoc_Type] as varchar), Cast([Pmt_DiscountDate] as varchar), Cast([CurrencyFactor] as varchar), [systemModifiedBy], [DraftInvoiceSystemId], [FiscalInvoiceNumberPAC], [Buy_fromVendorNo], [Pay_toAddress2], [Ship_toContact], [Ship_toAddress2], [Ship_toName2], [ShortcutDimension2Code], [LocationCode], [PaymentTermsCode], [OrderNo], [LanguageCode], [CurrencyCode], [VendorInvoiceNo], [VATCountry_RegionCode], [TransactionType], [Gen_Bus_PostingGroup], [Buy_fromAddress2], [Buy_fromVendorName2], [Pay_toCountry_RegionCode], [TransactionSpecification], [OrderAddressCode], [No_Series], [PrepaymentOrderNo], [Pay_toContactNo], [Buy_fromContactNo], [PaymentReference], [IRS1099Code], [ProvincialTaxAreaCode], Cast([timestamp] as varchar), Cast([VendorLedgerEntryNo] as varchar), Cast([PrepaymentInvoice] as varchar), Cast([No_Printed] as varchar), Cast([DocumentDate] as varchar), Cast([PostingDate] as varchar), Cast([systemModifiedAt] as varchar), Cast([VATBaseDiscount] as varchar), [Pay_toContact], [Pre_AssignedNo], [SourceCode], Cast([DueDate] as varchar))) as dbt_scd_id,
			CURRENT_TIMESTAMP as dbt_updated_at, 
			CURRENT_TIMESTAMP as dbt_valid_from, 
			NULL as dbt_valid_to
		From stg.[BC_BJAuctionCompany_PurchInvHeader_0972_InterView]
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
