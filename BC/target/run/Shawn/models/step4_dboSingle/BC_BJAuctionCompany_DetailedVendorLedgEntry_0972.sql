
  
  if object_id ('"dbo"."BC_BJAuctionCompany_DetailedVendorLedgEntry_0972__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."BC_BJAuctionCompany_DetailedVendorLedgEntry_0972__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."BC_BJAuctionCompany_DetailedVendorLedgEntry_0972__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."BC_BJAuctionCompany_DetailedVendorLedgEntry_0972__dbt_tmp"
    end


   EXEC('create view dbo.BC_BJAuctionCompany_DetailedVendorLedgEntry_0972__dbt_tmp_temp_view as
    
Select
	cast([InitialEntryDueDate] as datetime) [InitialEntryDueDate],
	cast([UseTax] as int) [UseTax],
	cast([EntryNo_] as int) [EntryNo_],
	cast([ApplicationNo_] as int) [ApplicationNo_],
	cast([AppliedVend_LedgerEntryNo_] as int) [AppliedVend_LedgerEntryNo_],
	cast([CreditAmountLCY] as numeric(19,4)) [CreditAmountLCY],
	cast([DebitAmountLCY] as numeric(19,4)) [DebitAmountLCY],
	cast([DebitAmount] as numeric(19,4)) [DebitAmount],
	cast([timestamp] as varbinary(8000)) [timestamp],
	cast([JournalBatchName] as nvarchar(4000)) [JournalBatchName],
	cast([CurrencyCode] as nvarchar(4000)) [CurrencyCode],
	cast([TaxJurisdictionCode] as nvarchar(4000)) [TaxJurisdictionCode],
	cast([Gen_Prod_PostingGroup] as nvarchar(4000)) [Gen_Prod_PostingGroup],
	cast([Gen_Bus_PostingGroup] as nvarchar(4000)) [Gen_Bus_PostingGroup],
	cast([$systemId] as nvarchar(4000)) [$systemId],
	cast([DocumentType] as int) [DocumentType],
	cast([VendorLedgerEntryNo_] as int) [VendorLedgerEntryNo_],
	cast([Unapplied] as int) [Unapplied],
	cast([RemainingPmt_Disc_Possible] as numeric(19,4)) [RemainingPmt_Disc_Possible],
	cast([Amount] as numeric(19,4)) [Amount],
	cast([ReasonCode] as nvarchar(4000)) [ReasonCode],
	cast([UserID] as nvarchar(4000)) [UserID],
	cast([VATBus_PostingGroup] as nvarchar(4000)) [VATBus_PostingGroup],
	cast([$systemCreatedBy] as nvarchar(4000)) [$systemCreatedBy],
	cast([DocumentNo_] as nvarchar(4000)) [DocumentNo_],
	cast([$systemModifiedAt] as datetime) [$systemModifiedAt],
	cast([$systemCreatedAt] as datetime) [$systemCreatedAt],
	cast([TransactionNo_] as int) [TransactionNo_],
	cast([LedgerEntryAmount] as int) [LedgerEntryAmount],
	cast([UnappliedbyEntryNo_] as int) [UnappliedbyEntryNo_],
	cast([Max_PaymentTolerance] as numeric(19,4)) [Max_PaymentTolerance],
	cast([CreditAmount] as numeric(19,4)) [CreditAmount],
	cast([SourceCode] as nvarchar(4000)) [SourceCode],
	cast([VATProd_PostingGroup] as nvarchar(4000)) [VATProd_PostingGroup],
	cast([$systemModifiedBy] as nvarchar(4000)) [$systemModifiedBy],
	cast([VendorNo_] as nvarchar(4000)) [VendorNo_],
	cast([PostingDate] as datetime) [PostingDate],
	cast([EntryType] as int) [EntryType],
	cast([InitialDocumentType] as int) [InitialDocumentType],
	cast([AmountLCY] as numeric(19,4)) [AmountLCY],
	cast([InitialEntryGlobalDim_1] as nvarchar(4000)) [InitialEntryGlobalDim_1],
	cast([InitialEntryGlobalDim_2] as nvarchar(4000)) [InitialEntryGlobalDim_2] 
From stg.[BC_BJAuctionCompany_DetailedVendorLedgEntry_0972_FinalView]
    ');

  CREATE TABLE "dbo"."BC_BJAuctionCompany_DetailedVendorLedgEntry_0972__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.BC_BJAuctionCompany_DetailedVendorLedgEntry_0972__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."BC_BJAuctionCompany_DetailedVendorLedgEntry_0972__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."BC_BJAuctionCompany_DetailedVendorLedgEntry_0972__dbt_tmp_temp_view"
    end


