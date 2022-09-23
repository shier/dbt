{{ config(materialized='incremental',schema='stg',unique_key='dbt_scd_id')}}
With hashData as (
		Select
			*,HASHBYTES('SHA2_256', concat(Cast([TransactionNo] as varchar), Cast([Reversed] as varchar), Cast([UseTax] as varchar), Cast([FAEntryNo] as varchar), Cast([systemModifiedAt] as varchar), Cast([DocumentDate] as varchar), Cast([Add__CurrencyDebitAmount] as varchar), Cast([Amount] as varchar), Cast([timestamp] as varchar), [STETransactionID], [SourceCode], [GlobalDimension2Code], [SourceNo], [Gen_Bus_PostingGroup], [JournalBatchName], [VATProd_PostingGroup], [G_LAccountNo], Cast([SourceType] as varchar), Cast([Bal_AccountType] as varchar), Cast([Prior_YearEntry] as varchar), Cast([ReversedEntryNo] as varchar), Cast([LastModifiedDateTime] as varchar), Cast([CreditAmount] as varchar), Cast([VATAmount] as varchar), Cast([DocumentType] as varchar), [systemCreatedBy], [BusinessUnitCode], [Gen_Prod_PostingGroup], [ReasonCode], [TaxGroupCode], [No_Series], [Description], Cast([TaxLiable] as varchar), Cast([Gen_PostingType] as varchar), Cast([DimensionSetID] as varchar), Cast([GST_HST] as varchar), Cast([FAEntryType] as varchar), Cast([systemCreatedAt] as varchar), Cast([PostingDate] as varchar), Cast([Quantity] as varchar), Cast([Add__CurrencyCreditAmount] as varchar), Cast([System_CreatedEntry] as varchar), Cast([EntryNo] as varchar), [systemModifiedBy], [systemId], [Prod_OrderNo], [JobNo], [UserID], [GlobalDimension1Code], [ExternalDocumentNo], [ICPartnerCode], [Bal_AccountNo], [VATBus_PostingGroup], [DocumentNo], Cast([ReversedbyEntryNo] as varchar), Cast([CloseIncomeStatementDim_ID] as varchar), Cast([Additional_CurrencyAmount] as varchar), Cast([DebitAmount] as varchar), [TaxAreaCode])) as dbt_scd_id,
			CURRENT_TIMESTAMP as dbt_updated_at, 
			CURRENT_TIMESTAMP as dbt_valid_from, 
			NULL as dbt_valid_to
		From stg.[BC_BJAuctionCompany_GLEntry_0972_InterView]
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
