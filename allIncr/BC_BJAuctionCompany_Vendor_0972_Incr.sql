{{ config(materialized='incremental',schema='stg',unique_key='dbt_scd_id')}}
With hashData as (
		Select
			*,HASHBYTES('SHA2_256', concat([SearchName], [Address2], [VendorPostingGroup], [TerritoryCode], [ShipmentMethodCode], [Fin_ChargeTermsCode], [FaxNo], [Pay_toVendorNo], [ShippingAgentCode], [PostCode], [VATRegistrationNo], [CreditorNo], [No_Series], [LeadTimeCalculation], [PrimaryContactNo], [CURPNo], [CurrencyId], [DocumentSendingProfile], [Over_ReceiptCode], [systemId], Cast([TaxLiable] as varchar), Cast([ApplicationMethod] as varchar), Cast([Blocked] as varchar), Cast([TaxIdentificationType] as varchar), Cast([CheckDateFormat] as varchar), Cast([BlockPaymentTolerance] as varchar), Cast([PriceCalculationMethod] as varchar), Cast([PrivacyBlocked] as varchar), Cast([systemModifiedAt] as varchar), Cast([LastDateModified] as varchar), Cast([Prepayment] as varchar), [systemCreatedBy], [Name], [PhoneNo], [City], [Address], [GlobalDimension1Code], [OurAccountNo], [LanguageCode], [InvoiceDisc_Code], [E_Mail], [VATBus_PostingGroup], [ResponsibilityCenter], [PreferredBankAccountCode], [RFCNo], [FederalIDNo], [BaseCalendarCode], [Id], [Image], [StateInscription], [MobilePhoneNo], [PaymentTermsId], Cast([PartnerType] as varchar), Cast([LastModifiedDateTime] as varchar), Cast([Picture] as varchar), [systemModifiedBy], [Contact], [Name2], [GlobalDimension2Code], [TelexNo], [PurchaserCode], [PaymentTermsCode], [CurrencyCode], [PaymentMethodCode], [Country_RegionCode], [County], [Gen_Bus_PostingGroup], [TelexAnswerBack], [ICPartnerCode], [HomePage], [LocationCode], [CashFlowPaymentTermsCode], [IRS1099Code], [UPSZone], [GLN], [EORINumber], [PaymentMethodId], Cast([PricesIncludingVAT] as varchar), Cast([Priority] as varchar), Cast([StatisticsGroup] as varchar), Cast([BankCommunication] as varchar), Cast([DIOT_TypeofOperation] as varchar), Cast([ValidateEUVatReg_No] as varchar), Cast([FATCAfilingrequirement] as varchar), Cast([DisableSearchbyName] as varchar), Cast([systemCreatedAt] as varchar), Cast([timestamp] as varchar), Cast([BudgetedAmount] as varchar), [No], [TaxAreaCode], Cast([CheckDateSeparator] as varchar))) as dbt_scd_id,
			CURRENT_TIMESTAMP as dbt_updated_at, 
			CURRENT_TIMESTAMP as dbt_valid_from, 
			NULL as dbt_valid_to
		From stg.[BC_BJAuctionCompany_Vendor_0972_InterView]
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
