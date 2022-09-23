{{ config(materialized='incremental',schema='stg',unique_key='dbt_scd_id')}}
With hashData as (
		Select
			*,HASHBYTES('SHA2_256', concat([GlobalDimension2Code], [ExternalDocumentNo], [ReasonCode], [Applies_toID], [Applies_toExt_Doc_No], [ClosedbyCurrencyCode], [Date_TimeStamped], [STETransactionID], [DirectDebitMandateID], [FiscalInvoiceNumberPAC], [Date_TimeSent], [systemCreatedBy], [systemId], Cast([QRCode] as varchar), [Sell_toCustomerNo], [DocumentNo], Cast([DigitalStampPAC] as varchar), Cast([DigitalStampSAT] as varchar), Cast([timestamp] as varchar), Cast([OriginalCurrencyFactor] as varchar), Cast([ClosedbyCurrencyAmount] as varchar), Cast([AmounttoApply] as varchar), Cast([ElectronicDocumentStatus] as varchar), Cast([DimensionSetID] as varchar), Cast([Pmt_Disc_GivenLCY] as varchar), Cast([SalesLCY] as varchar), Cast([LastIssuedReminderLevel] as varchar), Cast([ClosingInterestCalculated] as varchar), Cast([TransactionNo] as varchar), Cast([ExportedtoPaymentFile] as varchar), Cast([ReversedEntryNo] as varchar), Cast([systemModifiedAt] as varchar), Cast([ClosedbyEntryNo] as varchar), Cast([EntryNo] as varchar), Cast([DocumentDate] as varchar), [SourceCode], [SalespersonCode], [ICPartnerCode], [No_Series], [ErrorDescription], [Date_TimeCanceled], [Description], Cast([RemainingPmt_Disc_Possible] as varchar), Cast([AcceptedPaymentTolerance] as varchar), Cast([ElectronicDocumentSent] as varchar), Cast([Inv_DiscountLCY] as varchar), Cast([CalculateInterest] as varchar), Cast([Bal_AccountType] as varchar), Cast([Prepayment] as varchar), Cast([ReversedbyEntryNo] as varchar), Cast([ApplyingEntry] as varchar), Cast([Positive] as varchar), Cast([Applies_toDoc_Type] as varchar), Cast([DueDate] as varchar), Cast([Pmt_DiscountDate] as varchar), Cast([ClosedatDate] as varchar), [UserID], [GlobalDimension1Code], [Bal_AccountNo], [JournalBatchName], [Applies_toDoc_No], [RecipientBankAccount], [CertificateSerialNo], [TaxExemptionNo], [MessagetoRecipient], [PACWebServiceName], [ErrorCode], [systemModifiedBy], [CustomerName], [Date_TimeFirstReq_Sent], [CustomerPostingGroup], [CurrencyCode], [CustomerNo], Cast([OriginalString] as varchar), Cast([OriginalDocumentXML] as varchar), Cast([Max_PaymentTolerance] as varchar), Cast([AdjustedCurrencyFactor] as varchar), Cast([Pmt_ToleranceLCY] as varchar), Cast([No_ofE_DocumentsSent] as varchar), Cast([ClosedbyAmount] as varchar), Cast([OriginalPmt_Disc_Possible] as varchar), Cast([ProfitLCY] as varchar), Cast([AcceptedPmt_Disc_Tolerance] as varchar), Cast([systemCreatedAt] as varchar), Cast([Open] as varchar), Cast([Pmt_Disc_ToleranceDate] as varchar), Cast([PostingDate] as varchar), [OnHold], [PaymentMethodCode], [PaymentReference], Cast([SignedDocumentXML] as varchar), Cast([ClosedbyAmountLCY] as varchar), Cast([Reversed] as varchar), Cast([DocumentType] as varchar))) as dbt_scd_id,
			CURRENT_TIMESTAMP as dbt_updated_at, 
			CURRENT_TIMESTAMP as dbt_valid_from, 
			NULL as dbt_valid_to
		From stg.[BC_BJAuctionCompany_CustLedgerEntry_0972_InterView]
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
