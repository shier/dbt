{{ config(materialized='incremental',schema='stg',unique_key='dbt_scd_id')}}
With hashData as (
		Select
			*,HASHBYTES('SHA2_256', concat(Cast([DimensionSetID] as varchar), Cast([Bal_AccountType] as varchar), Cast([Applies_toDoc_Type] as varchar), Cast([PricesIncludingVAT] as varchar), Cast([Pmt_DiscountDate] as varchar), Cast([ExpectedReceiptDate] as varchar), Cast([systemModifiedAt] as varchar), Cast([CurrencyFactor] as varchar), [Pay_toAddress2], [Ship_toAddress], [Ship_toCode], [ShipmentMethodCode], [PostingDescription], [Ship_toCity], [InvoiceDisc_Code], [ShortcutDimension2Code], [LocationCode], [Applies_toDoc_No], [PurchaserCode], [TransportMethod], [Sell_toCustomerNo], [Buy_fromCity], [Buy_fromVendorName2], [VATCountry_RegionCode], [Buy_fromPostCode], [Pay_toCounty], [OrderAddressCode], [Ship_toCountry_RegionCode], [Ship_toPostCode], [PaymentMethodCode], [Area], [VATBus_PostingGroup], [SourceCode], [ReturnOrderNo_Series], [Pay_toContactNo], [CampaignNo], [IRS1099Code], [ProvincialTaxAreaCode], [Ship_toUPSZone], [No], Cast([TaxLiable] as varchar), Cast([DocumentDate] as varchar), Cast([timestamp] as varchar), [Pay_toName2], [Pay_toVendorNo], [Ship_toName2], [Pay_toContact], [Bal_AccountNo], [Gen_Bus_PostingGroup], [Buy_fromAddress], [Buy_fromContact], [Pre_AssignedNo], [ResponsibilityCenter], [systemCreatedBy], [Buy_fromVendorNo], Cast([VendorLedgerEntryNo] as varchar), Cast([PrepaymentCreditMemo] as varchar), Cast([Correction] as varchar), Cast([PriceCalculationMethod] as varchar), Cast([No_Printed] as varchar), Cast([systemCreatedAt] as varchar), Cast([DueDate] as varchar), Cast([PostingDate] as varchar), Cast([VATBaseDiscount] as varchar), Cast([PaymentDiscount] as varchar), [Pay_toCity], [Pay_toAddress], [Pay_toName], [Ship_toName], [YourReference], [PaymentTermsCode], [Ship_toContact], [Ship_toAddress2], [CurrencyCode], [VendorPostingGroup], [ShortcutDimension1Code], [VendorCr_MemoNo], [OnHold], [LanguageCode], [TransactionType], [ReasonCode], [Buy_fromVendorName], [Buy_fromCounty], [Pay_toCountry_RegionCode], [Pay_toPostCode], [EntryPoint], [Ship_toCounty], [Buy_fromCountry_RegionCode], [No_Series], [Pre_AssignedNo_Series], [TransactionSpecification], [PrepaymentOrderNo], [Prepmt_Cr_MemoNo_Series], [TaxAreaCode], [UserID], [ReturnOrderNo], [Buy_fromContactNo], [FiscalInvoiceNumberPAC], [STETransactionID], [systemModifiedBy], [VATRegistrationNo], [Buy_fromAddress2], [TaxExemptionNo], [systemId])) as dbt_scd_id,
			CURRENT_TIMESTAMP as dbt_updated_at, 
			CURRENT_TIMESTAMP as dbt_valid_from, 
			NULL as dbt_valid_to
		From stg.[BC_BJAuctionCompany_PurchCrMemoHdr_0972_InterView]
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
