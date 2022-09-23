{{ config(materialized='incremental',schema='stg',unique_key='dbt_scd_id')}}
With hashData as (
		Select
			*,HASHBYTES('SHA2_256', concat(Cast([Pmt_Disc_Rcd_LCY] as varchar), Cast([Inv_DiscountLCY] as varchar), Cast([Max_PaymentTolerance] as varchar), Cast([AdjustedCurrencyFactor] as varchar), Cast([AmounttoApply] as varchar), [UserID], [GlobalDimension2Code], [Buy_fromVendorNo], [Applies_toID], [SourceCode], [ICPartnerCode], [ExternalDocumentNo], [IRS1099Code], [RecipientBankAccount], [PaymentReference], [systemCreatedBy], [VendorName], Cast([DocumentDate] as varchar), Cast([Pmt_DiscountDate] as varchar), Cast([PostingDate] as varchar), Cast([ClosedbyEntryNo] as varchar), Cast([DocumentType] as varchar), Cast([ReversedbyEntryNo] as varchar), Cast([ApplyingEntry] as varchar), Cast([Bal_AccountType] as varchar), Cast([ExportedtoPaymentFile] as varchar), Cast([ReversedEntryNo] as varchar), [Description], [VendorNo], Cast([ClosedbyAmount] as varchar), Cast([OriginalCurrencyFactor] as varchar), Cast([IRS1099Amount] as varchar), [VendorPostingGroup], [JournalBatchName], [Applies_toDoc_No], [No_Series], [PaymentMethodCode], Cast([Pmt_Disc_ToleranceDate] as varchar), Cast([systemCreatedAt] as varchar), Cast([Positive] as varchar), Cast([Applies_toDoc_Type] as varchar), Cast([EntryNo] as varchar), Cast([TransactionNo] as varchar), Cast([ClosedbyAmountLCY] as varchar), Cast([OriginalPmt_Disc_Possible] as varchar), Cast([PurchaseLCY] as varchar), Cast([AcceptedPaymentTolerance] as varchar), Cast([RemainingPmt_Disc_Possible] as varchar), Cast([ClosedbyCurrencyAmount] as varchar), Cast([Pmt_ToleranceLCY] as varchar), [ReasonCode], [OnHold], [CreditorNo], [ClosedbyCurrencyCode], [Bal_AccountNo], [MessagetoRecipient], [Applies_toExt_Doc_No], [systemModifiedBy], [systemId], Cast([timestamp] as varchar), Cast([ClosedatDate] as varchar), Cast([DueDate] as varchar), Cast([systemModifiedAt] as varchar), Cast([Open] as varchar), Cast([Reversed] as varchar), Cast([AcceptedPmt_Disc_Tolerance] as varchar), Cast([DimensionSetID] as varchar), Cast([Prepayment] as varchar), [CurrencyCode], [DocumentNo], [PurchaserCode], [GlobalDimension1Code])) as dbt_scd_id,
			CURRENT_TIMESTAMP as dbt_updated_at, 
			CURRENT_TIMESTAMP as dbt_valid_from, 
			NULL as dbt_valid_to
		From stg.[BC_BJAuctionCompany_VendorLedgerEntry_0972_InterView]
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
