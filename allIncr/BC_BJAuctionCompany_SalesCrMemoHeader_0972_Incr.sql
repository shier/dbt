{{ config(materialized='incremental',schema='stg',unique_key='dbt_scd_id')}}
With hashData as (
		Select
			*,HASHBYTES('SHA2_256', concat(Cast([DigitalStampPAC] as varchar), Cast([DigitalStampSAT] as varchar), Cast([OriginalDocumentXML] as varchar), Cast([CurrencyFactor] as varchar), Cast([ElectronicDocumentStatus] as varchar), Cast([PrepaymentCreditMemo] as varchar), Cast([Bal_AccountType] as varchar), Cast([ElectronicDocumentSent] as varchar), Cast([AllowLineDisc] as varchar), Cast([DimensionSetID] as varchar), Cast([PricesIncludingVAT] as varchar), Cast([systemCreatedAt] as varchar), Cast([ShipmentDate] as varchar), [Bill_toAddress2], [Bill_toName2], [Bill_toCustomerNo], [Ship_toName2], [Ship_toCode], [Bill_toContact], [PaymentTermsCode], [Ship_toCity], [Ship_toAddress], [CustomerPostingGroup], [ShortcutDimension1Code], [LanguageCode], [InvoiceDisc_Code], [Gen_Bus_PostingGroup], [VATRegistrationNo], [Applies_toDoc_No], [Sell_toAddress], [Sell_toCustomerName2], [VATCountry_RegionCode], [Bill_toCountry_RegionCode], [Sell_toContact], [ExitPoint], [Ship_toPostCode], [PaymentMethodCode], [Area], [Prepmt_Cr_MemoNo_Series], [TaxAreaCode], [UserID], [Sell_toContactNo], [Doc_Exch_OriginalIdentifier], [ReturnOrderNo], [OpportunityNo], [Date_TimeSent], [STETransactionID], [Date_TimeFirstReq_Sent], [ErrorDescription], [PackageTrackingNo], [systemId], [CFDIPurpose], [systemCreatedBy], Cast([QRCode] as varchar), Cast([SignedDocumentXML] as varchar), Cast([PriceCalculationMethod] as varchar), Cast([No_ofE_DocumentsSent] as varchar), Cast([TaxLiable] as varchar), Cast([Applies_toDoc_Type] as varchar), Cast([DocumentExchangeStatus] as varchar), Cast([Pmt_DiscountDate] as varchar), [Ship_toContact], [Ship_toAddress2], [CurrencyCode], [ShipmentMethodCode], [SalespersonCode], [TransactionType], [Sell_toPostCode], [Ship_toCounty], [Sell_toCounty], [Pre_AssignedNo_Series], [Bill_toContactNo], [CampaignNo], [Ship_toUPSZone], [ReturnOrderNo_Series], [CertificateSerialNo], [Sell_toPhoneNo], [PACWebServiceName], [ShippingAgentServiceCode], Cast([WorkDescription] as varchar), Cast([OriginalString] as varchar), Cast([timestamp] as varchar), Cast([VATBaseDiscount] as varchar), Cast([GetReturnReceiptUsed] as varchar), Cast([Cust_LedgerEntryNo] as varchar), Cast([No_Printed] as varchar), Cast([systemModifiedAt] as varchar), Cast([DocumentDate] as varchar), Cast([PostingDate] as varchar), [Bill_toName], [Ship_toName], [Bill_toCity], [ShortcutDimension2Code], [LocationCode], [OnHold], [CustomerDisc_Group], [CustomerPriceGroup], [ReasonCode], [Bal_AccountNo], [Sell_toAddress2], [Sell_toCustomerName], [TransportMethod], [Bill_toCounty], [Bill_toPostCode], [Sell_toCity], [Ship_toCountry_RegionCode], [Sell_toCountry_RegionCode], [TransactionSpecification], [ExternalDocumentNo], [VATBus_PostingGroup], [SourceCode], [DocumentExchangeIdentifier], [PrepaymentOrderNo], [ResponsibilityCenter], [Date_TimeCanceled], [Date_TimeStamped], [TaxExemptionNo], [FiscalInvoiceNumberPAC], [ErrorCode], [ShippingAgentCode], [CFDIRelation], [Sell_toE_Mail], [systemModifiedBy], [DraftCr_MemoSystemId], [No], Cast([PaymentDiscount] as varchar), Cast([Correction] as varchar), Cast([EU3_PartyTrade] as varchar), Cast([DueDate] as varchar), [Bill_toAddress], [Sell_toCustomerNo], [YourReference], [PostingDescription], [No_Series], [Pre_AssignedNo], [Id])) as dbt_scd_id,
			CURRENT_TIMESTAMP as dbt_updated_at, 
			CURRENT_TIMESTAMP as dbt_valid_from, 
			NULL as dbt_valid_to
		From stg.[BC_BJAuctionCompany_SalesCrMemoHeader_0972_InterView]
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
