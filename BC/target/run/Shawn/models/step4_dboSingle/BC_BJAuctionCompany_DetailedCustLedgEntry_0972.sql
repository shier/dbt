
  
  if object_id ('"dbo"."BC_BJAuctionCompany_DetailedCustLedgEntry_0972__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."BC_BJAuctionCompany_DetailedCustLedgEntry_0972__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."BC_BJAuctionCompany_DetailedCustLedgEntry_0972__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."BC_BJAuctionCompany_DetailedCustLedgEntry_0972__dbt_tmp"
    end


   EXEC('create view dbo.BC_BJAuctionCompany_DetailedCustLedgEntry_0972__dbt_tmp_temp_view as
    
Select
	cast([ReasonCode] as nvarchar(4000)) [ReasonCode],
	cast([CustomerNo_] as nvarchar(4000)) [CustomerNo_],
	cast([Gen_Prod_PostingGroup] as nvarchar(4000)) [Gen_Prod_PostingGroup],
	cast([Gen_Bus_PostingGroup] as nvarchar(4000)) [Gen_Bus_PostingGroup],
	cast([$systemCreatedBy] as nvarchar(4000)) [$systemCreatedBy],
	cast([DocumentNo_] as nvarchar(4000)) [DocumentNo_],
	cast([RemainingPmt_Disc_Possible] as numeric(19,4)) [RemainingPmt_Disc_Possible],
	cast([CreditAmountLCY] as numeric(19,4)) [CreditAmountLCY],
	cast([CreditAmount] as numeric(19,4)) [CreditAmount],
	cast([Amount] as numeric(19,4)) [Amount],
	cast([DocumentType] as int) [DocumentType],
	cast([EntryNo_] as int) [EntryNo_],
	cast([Unapplied] as int) [Unapplied],
	cast([InitialDocumentType] as int) [InitialDocumentType],
	cast([$systemModifiedAt] as datetime) [$systemModifiedAt],
	cast([InitialEntryDueDate] as datetime) [InitialEntryDueDate],
	cast([UserID] as nvarchar(4000)) [UserID],
	cast([CurrencyCode] as nvarchar(4000)) [CurrencyCode],
	cast([VATBus_PostingGroup] as nvarchar(4000)) [VATBus_PostingGroup],
	cast([$systemModifiedBy] as nvarchar(4000)) [$systemModifiedBy],
	cast([Max_PaymentTolerance] as numeric(19,4)) [Max_PaymentTolerance],
	cast([TransactionNo_] as int) [TransactionNo_],
	cast([Cust_LedgerEntryNo_] as int) [Cust_LedgerEntryNo_],
	cast([UnappliedbyEntryNo_] as int) [UnappliedbyEntryNo_],
	cast([SourceCode] as nvarchar(4000)) [SourceCode],
	cast([InitialEntryGlobalDim_2] as nvarchar(4000)) [InitialEntryGlobalDim_2],
	cast([InitialEntryGlobalDim_1] as nvarchar(4000)) [InitialEntryGlobalDim_1],
	cast([$systemId] as nvarchar(4000)) [$systemId],
	cast([TaxJurisdictionCode] as nvarchar(4000)) [TaxJurisdictionCode],
	cast([timestamp] as varbinary(8000)) [timestamp],
	cast([DebitAmount] as numeric(19,4)) [DebitAmount],
	cast([AmountLCY] as numeric(19,4)) [AmountLCY],
	cast([UseTax] as int) [UseTax],
	cast([EntryType] as int) [EntryType],
	cast([LedgerEntryAmount] as int) [LedgerEntryAmount],
	cast([ApplicationNo_] as int) [ApplicationNo_],
	cast([AppliedCust_LedgerEntryNo_] as int) [AppliedCust_LedgerEntryNo_],
	cast([$systemCreatedAt] as datetime) [$systemCreatedAt],
	cast([PostingDate] as datetime) [PostingDate],
	cast([JournalBatchName] as nvarchar(4000)) [JournalBatchName],
	cast([VATProd_PostingGroup] as nvarchar(4000)) [VATProd_PostingGroup],
	cast([DebitAmountLCY] as numeric(19,4)) [DebitAmountLCY] 
From stg.[BC_BJAuctionCompany_DetailedCustLedgEntry_0972_FinalView]
    ');

  CREATE TABLE "dbo"."BC_BJAuctionCompany_DetailedCustLedgEntry_0972__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.BC_BJAuctionCompany_DetailedCustLedgEntry_0972__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."BC_BJAuctionCompany_DetailedCustLedgEntry_0972__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."BC_BJAuctionCompany_DetailedCustLedgEntry_0972__dbt_tmp_temp_view"
    end


