create view "stg"."BC_BJAuctionCompany_CustLedgerEntry_0972_InterView__dbt_tmp" as
    
Select
	[EntryNo_] as [EntryNo],
	[PostingDate] ,
	[DueDate] ,
	[Pmt_DiscountDate] ,
	[ClosedatDate] ,
	[DocumentDate] ,
	[Pmt_Disc_ToleranceDate] ,
	[DocumentType] ,
	[Applies-toDoc_Type] as [Applies_toDoc_Type],
	[Open] ,
	[Positive] ,
	[ClosedbyEntryNo_] as [ClosedbyEntryNo],
	[$systemCreatedAt] as [systemCreatedAt],
	[$systemModifiedAt] as [systemModifiedAt],
	[ApplyingEntry] ,
	[Reversed] ,
	[ReversedbyEntryNo_] as [ReversedbyEntryNo],
	[ReversedEntryNo_] as [ReversedEntryNo],
	[Prepayment] ,
	[ExportedtoPaymentFile] ,
	[Bal_AccountType] ,
	[TransactionNo_] as [TransactionNo],
	[CalculateInterest] ,
	[ClosingInterestCalculated] ,
	[LastIssuedReminderLevel] ,
	[AcceptedPmt_Disc_Tolerance] ,
	[SalesLCY] ,
	[ProfitLCY] ,
	[Inv_DiscountLCY] ,
	[OriginalPmt_Disc_Possible] ,
	[Pmt_Disc_GivenLCY] ,
	[ClosedbyAmount] ,
	[DimensionSetID] ,
	[ElectronicDocumentSent] ,
	[No_ofE-DocumentsSent] as [No_ofE_DocumentsSent],
	[ElectronicDocumentStatus] ,
	[AcceptedPaymentTolerance] ,
	[Pmt_ToleranceLCY] ,
	[AmounttoApply] ,
	[ClosedbyAmountLCY] ,
	[ClosedbyCurrencyAmount] ,
	[AdjustedCurrencyFactor] ,
	[OriginalCurrencyFactor] ,
	[RemainingPmt_Disc_Possible] ,
	[Max_PaymentTolerance] ,
	cast([timestamp] as nvarchar(4000)) [timestamp],
	cast([OriginalDocumentXML] as nvarchar(4000)) [OriginalDocumentXML],
	cast([OriginalString] as nvarchar(4000)) [OriginalString],
	cast([DigitalStampSAT] as nvarchar(4000)) [DigitalStampSAT],
	cast([SignedDocumentXML] as nvarchar(4000)) [SignedDocumentXML],
	cast([DigitalStampPAC] as nvarchar(4000)) [DigitalStampPAC],
	cast([CustomerNo_] as nvarchar(4000)) [CustomerNo],
	cast([DocumentNo_] as nvarchar(4000)) [DocumentNo],
	cast([Description] as nvarchar(4000)) [Description],
	cast([CurrencyCode] as nvarchar(4000)) [CurrencyCode],
	cast([Sell-toCustomerNo_] as nvarchar(4000)) [Sell_toCustomerNo],
	cast([CustomerPostingGroup] as nvarchar(4000)) [CustomerPostingGroup],
	cast([QRCode] as nvarchar(4000)) [QRCode],
	cast([Date_TimeFirstReq_Sent] as nvarchar(4000)) [Date_TimeFirstReq_Sent],
	cast([CustomerName] as nvarchar(4000)) [CustomerName],
	cast([$systemId] as nvarchar(4000)) [systemId],
	cast([PaymentReference] as nvarchar(4000)) [PaymentReference],
	cast([$systemCreatedBy] as nvarchar(4000)) [systemCreatedBy],
	cast([$systemModifiedBy] as nvarchar(4000)) [systemModifiedBy],
	cast([Date_TimeSent] as nvarchar(4000)) [Date_TimeSent],
	cast([Date_TimeCanceled] as nvarchar(4000)) [Date_TimeCanceled],
	cast([ErrorCode] as nvarchar(4000)) [ErrorCode],
	cast([ErrorDescription] as nvarchar(4000)) [ErrorDescription],
	cast([PACWebServiceName] as nvarchar(4000)) [PACWebServiceName],
	cast([FiscalInvoiceNumberPAC] as nvarchar(4000)) [FiscalInvoiceNumberPAC],
	cast([MessagetoRecipient] as nvarchar(4000)) [MessagetoRecipient],
	cast([DirectDebitMandateID] as nvarchar(4000)) [DirectDebitMandateID],
	cast([TaxExemptionNo_] as nvarchar(4000)) [TaxExemptionNo],
	cast([STETransactionID] as nvarchar(4000)) [STETransactionID],
	cast([CertificateSerialNo_] as nvarchar(4000)) [CertificateSerialNo],
	cast([Date_TimeStamped] as nvarchar(4000)) [Date_TimeStamped],
	cast([No_Series] as nvarchar(4000)) [No_Series],
	cast([ClosedbyCurrencyCode] as nvarchar(4000)) [ClosedbyCurrencyCode],
	cast([ICPartnerCode] as nvarchar(4000)) [ICPartnerCode],
	cast([PaymentMethodCode] as nvarchar(4000)) [PaymentMethodCode],
	cast([Applies-toExt_Doc_No_] as nvarchar(4000)) [Applies_toExt_Doc_No],
	cast([RecipientBankAccount] as nvarchar(4000)) [RecipientBankAccount],
	cast([Applies-toDoc_No_] as nvarchar(4000)) [Applies_toDoc_No],
	cast([Applies-toID] as nvarchar(4000)) [Applies_toID],
	cast([JournalBatchName] as nvarchar(4000)) [JournalBatchName],
	cast([ReasonCode] as nvarchar(4000)) [ReasonCode],
	cast([Bal_AccountNo_] as nvarchar(4000)) [Bal_AccountNo],
	cast([ExternalDocumentNo_] as nvarchar(4000)) [ExternalDocumentNo],
	cast([GlobalDimension1Code] as nvarchar(4000)) [GlobalDimension1Code],
	cast([GlobalDimension2Code] as nvarchar(4000)) [GlobalDimension2Code],
	cast([SalespersonCode] as nvarchar(4000)) [SalespersonCode],
	cast([UserID] as nvarchar(4000)) [UserID],
	cast([SourceCode] as nvarchar(4000)) [SourceCode],
	cast([OnHold] as nvarchar(4000)) [OnHold]
From stg.[BC_BJAuctionCompany_CustLedgerEntry_0972_Raw]
