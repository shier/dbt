{{ config(materialized='incremental',schema='stg',unique_key='dbt_scd_id')}}
With hashData as (
		Select
			*,HASHBYTES('SHA2_256', concat(Cast([InitialEntryDueDate] as varchar), Cast([UseTax] as varchar), Cast([EntryNo] as varchar), Cast([ApplicationNo] as varchar), Cast([AppliedVend_LedgerEntryNo] as varchar), Cast([CreditAmountLCY] as varchar), Cast([DebitAmountLCY] as varchar), Cast([DebitAmount] as varchar), Cast([timestamp] as varchar), [JournalBatchName], [CurrencyCode], [TaxJurisdictionCode], [Gen_Prod_PostingGroup], [Gen_Bus_PostingGroup], [systemId], Cast([DocumentType] as varchar), Cast([VendorLedgerEntryNo] as varchar), Cast([Unapplied] as varchar), Cast([RemainingPmt_Disc_Possible] as varchar), Cast([Amount] as varchar), [ReasonCode], [UserID], [VATBus_PostingGroup], [systemCreatedBy], [DocumentNo], Cast([systemModifiedAt] as varchar), Cast([systemCreatedAt] as varchar), Cast([TransactionNo] as varchar), Cast([LedgerEntryAmount] as varchar), Cast([UnappliedbyEntryNo] as varchar), Cast([Max_PaymentTolerance] as varchar), Cast([CreditAmount] as varchar), [SourceCode], [VATProd_PostingGroup], [systemModifiedBy], [VendorNo], Cast([PostingDate] as varchar), Cast([EntryType] as varchar), Cast([InitialDocumentType] as varchar), Cast([AmountLCY] as varchar), [InitialEntryGlobalDim_1], [InitialEntryGlobalDim_2])) as dbt_scd_id,
			CURRENT_TIMESTAMP as dbt_updated_at, 
			CURRENT_TIMESTAMP as dbt_valid_from, 
			NULL as dbt_valid_to
		From stg.[BC_BJAuctionCompany_DetailedVendorLedgEntry_0972_InterView]
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
