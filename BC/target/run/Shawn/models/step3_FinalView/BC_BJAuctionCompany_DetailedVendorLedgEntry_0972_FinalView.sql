create view "stg"."BC_BJAuctionCompany_DetailedVendorLedgEntry_0972_FinalView__dbt_tmp" as
    
Select
	[EntryNo] as [EntryNo_] ,
	[DocumentNo] as [DocumentNo_] ,
	[VendorNo] as [VendorNo_] ,
	[systemId] as [$systemId] ,
	[systemCreatedBy] as [$systemCreatedBy] ,
	[systemModifiedBy] as [$systemModifiedBy] ,
	[InitialEntryGlobalDim_2] ,
	[Gen_Bus_PostingGroup] ,
	[Gen_Prod_PostingGroup] ,
	[VATBus_PostingGroup] ,
	[VATProd_PostingGroup] ,
	[TaxJurisdictionCode] ,
	[CurrencyCode] ,
	[UserID] ,
	[SourceCode] ,
	[JournalBatchName] ,
	[ReasonCode] ,
	[InitialEntryGlobalDim_1] ,
	[timestamp] ,
	[Amount] ,
	[AmountLCY] ,
	[DebitAmount] ,
	[CreditAmount] ,
	[DebitAmountLCY] ,
	[CreditAmountLCY] ,
	[RemainingPmt_Disc_Possible] ,
	[Max_PaymentTolerance] ,
	[InitialDocumentType] ,
	[AppliedVend_LedgerEntryNo] as [AppliedVend_LedgerEntryNo_] ,
	[Unapplied] ,
	[UnappliedbyEntryNo] as [UnappliedbyEntryNo_] ,
	[ApplicationNo] as [ApplicationNo_] ,
	[LedgerEntryAmount] ,
	[VendorLedgerEntryNo] as [VendorLedgerEntryNo_] ,
	[EntryType] ,
	[DocumentType] ,
	[TransactionNo] as [TransactionNo_] ,
	[UseTax] ,
	[PostingDate] ,
	[InitialEntryDueDate] ,
	[systemCreatedAt] as [$systemCreatedAt] ,
	[systemModifiedAt] as [$systemModifiedAt] 
From stg.[BC_BJAuctionCompany_DetailedVendorLedgEntry_0972_Incr] 
Where [dbt_valid_to] is null
