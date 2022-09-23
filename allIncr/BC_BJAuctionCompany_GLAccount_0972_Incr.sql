{{ config(materialized='incremental',schema='stg',unique_key='dbt_scd_id')}}
With hashData as (
		Select
			*,HASHBYTES('SHA2_256', concat(Cast([LastDateModified] as varchar), Cast([LastModifiedDateTime] as varchar), Cast([systemCreatedAt] as varchar), Cast([systemModifiedAt] as varchar), Cast([AccountType] as varchar), Cast([Income_Balance] as varchar), Cast([Debit_Credit] as varchar), Cast([Blocked] as varchar), Cast([DirectPosting] as varchar), Cast([ReconciliationAccount] as varchar), Cast([TaxLiable] as varchar), Cast([ExchangeRateAdjustment] as varchar), Cast([AccountCategory] as varchar), Cast([OmitDefaultDescr_inJnl] as varchar), Cast([AccountSubcategoryEntryNo] as varchar), Cast([APIAccountType] as varchar), Cast([NewPage] as varchar), Cast([No_ofBlankLines] as varchar), Cast([Indentation] as varchar), Cast([Consol_TranslationMethod] as varchar), Cast([Gen_PostingType] as varchar), Cast([AutomaticExt_Texts] as varchar), Cast([timestamp] as varchar), Cast([Picture] as varchar), [No], [Name], [SearchName], [GlobalDimension1Code], [GlobalDimension2Code], [No_2], [DefaultDeferralTemplateCode], [Id], [SATAccountCode], [systemId], [systemCreatedBy], [systemModifiedBy], [TaxGroupCode], [VATBus_PostingGroup], [VATProd_PostingGroup], [DefaultICPartnerG_LAcc_No], [CostTypeNo], [GIFICode], [Totaling], [Consol_DebitAcc], [Consol_CreditAcc], [Gen_Bus_PostingGroup], [Gen_Prod_PostingGroup], [TaxAreaCode])) as dbt_scd_id,
			CURRENT_TIMESTAMP as dbt_updated_at, 
			CURRENT_TIMESTAMP as dbt_valid_from, 
			NULL as dbt_valid_to
		From stg.[BC_BJAuctionCompany_GLAccount_0972_InterView]
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
