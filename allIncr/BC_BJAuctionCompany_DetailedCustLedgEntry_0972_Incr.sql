{{ config(materialized='incremental',schema='stg',unique_key='dbt_scd_id')}}
With hashData as (
		Select
			*,HASHBYTES('SHA2_256', concat([ReasonCode], [CustomerNo], [Gen_Prod_PostingGroup], [Gen_Bus_PostingGroup], [systemCreatedBy], [DocumentNo], Cast([RemainingPmt_Disc_Possible] as varchar), Cast([CreditAmountLCY] as varchar), Cast([CreditAmount] as varchar), Cast([Amount] as varchar), Cast([DocumentType] as varchar), Cast([EntryNo] as varchar), Cast([Unapplied] as varchar), Cast([InitialDocumentType] as varchar), Cast([systemModifiedAt] as varchar), Cast([InitialEntryDueDate] as varchar), [UserID], [CurrencyCode], [VATBus_PostingGroup], [systemModifiedBy], Cast([Max_PaymentTolerance] as varchar), Cast([TransactionNo] as varchar), Cast([Cust_LedgerEntryNo] as varchar), Cast([UnappliedbyEntryNo] as varchar), [SourceCode], [InitialEntryGlobalDim_2], [InitialEntryGlobalDim_1], [systemId], [TaxJurisdictionCode], Cast([timestamp] as varchar), Cast([DebitAmount] as varchar), Cast([AmountLCY] as varchar), Cast([UseTax] as varchar), Cast([EntryType] as varchar), Cast([LedgerEntryAmount] as varchar), Cast([ApplicationNo] as varchar), Cast([AppliedCust_LedgerEntryNo] as varchar), Cast([systemCreatedAt] as varchar), Cast([PostingDate] as varchar), [JournalBatchName], [VATProd_PostingGroup], Cast([DebitAmountLCY] as varchar))) as dbt_scd_id,
			CURRENT_TIMESTAMP as dbt_updated_at, 
			CURRENT_TIMESTAMP as dbt_valid_from, 
			NULL as dbt_valid_to
		From stg.[BC_BJAuctionCompany_DetailedCustLedgEntry_0972_InterView]
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
