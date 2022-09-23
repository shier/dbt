{{ config(materialized='incremental',schema='stg',unique_key='dbt_scd_id')}}
With hashData as (
		Select
			*,HASHBYTES('SHA2_256', concat(Cast([systemCreatedAt] as varchar), Cast([PricesIncludingVAT] as varchar), Cast([Priority] as varchar), Cast([LastStatementNo] as varchar), Cast([PartnerType] as varchar), Cast([Reserve] as varchar), Cast([TaxIdentificationType] as varchar), Cast([CheckDateFormat] as varchar), Cast([BankCommunication] as varchar), Cast([PriceCalculationMethod] as varchar), Cast([DisableSearchbyName] as varchar), Cast([ValidateEUVatReg_No] as varchar), Cast([Blocked] as varchar), Cast([BudgetedAmount] as varchar), Cast([timestamp] as varchar), [Address], [SearchName], [No], [OurAccountNo], [Contact], [CustomerPriceGroup], [CustomerPostingGroup], [GlobalDimension2Code], [GlobalDimension1Code], [SalespersonCode], [LanguageCode], [Country_RegionCode], [Gen_Bus_PostingGroup], [TelexAnswerBack], [LocationCode], [No_Series], [CashFlowPaymentTermsCode], [VATBus_PostingGroup], [UPSZone], [ServiceZoneCode], [GLN], [ResponsibilityCenter], [RFCNo], [PaymentMethodId], [systemModifiedBy], [EORINumber], Cast([systemModifiedAt] as varchar), Cast([ShippingAdvice] as varchar), Cast([CombineShipments] as varchar), Cast([AllowLineDisc] as varchar), Cast([Prepayment] as varchar), [PhoneNo], [ShipmentMethodCode], [PaymentTermsCode], [CollectionMethod], [PlaceofExport], [HomePage], [County], [PrimaryContactNo], [ICPartnerCode], [TaxAreaCode], [ShippingTime], [StateInscription], [PaymentTermsId], [Id], [Ship_toCode], [CFDIPurpose], [ContactID], [MobilePhoneNo], [systemId], Cast([LastModifiedDateTime] as varchar), Cast([LastDateModified] as varchar), Cast([PrintStatements] as varchar), Cast([InvoiceCopies] as varchar), Cast([BlockPaymentTolerance] as varchar), Cast([TaxLiable] as varchar), Cast([CheckDateSeparator] as varchar), Cast([CopySell_toAddr_toQteFrom] as varchar), Cast([UseGLNinElectronicDocument] as varchar), Cast([PrivacyBlocked] as varchar), Cast([ContactType] as varchar), Cast([StatisticsGroup] as varchar), Cast([CreditLimitLCY] as varchar), Cast([Picture] as varchar), [Address2], [Name2], [Name], [TelexNo], [City], [ChainName], [ShippingAgentCode], [Fin_ChargeTermsCode], [Bill_toCustomerNo], [CustomerDisc_Group], [InvoiceDisc_Code], [VATRegistrationNo], [FaxNo], [ReminderTermsCode], [E_Mail], [PostCode], [PreferredBankAccountCode], [BaseCalendarCode], [ShippingAgentServiceCode], [CURPNo], [TaxExemptionNo], [CurrencyId], [Image], [CFDIRelation], [ContactGraphId], [TaxAreaID], [systemCreatedBy], Cast([ApplicationMethod] as varchar), Cast([Amount] as varchar), [TerritoryCode], [CurrencyCode], [PaymentMethodCode], [DocumentSendingProfile], [ShipmentMethodId])) as dbt_scd_id,
			CURRENT_TIMESTAMP as dbt_updated_at, 
			CURRENT_TIMESTAMP as dbt_valid_from, 
			NULL as dbt_valid_to
		From stg.[BC_BJAuctionCompany_Customer_0972_InterView]
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
