
  
  if object_id ('"dbo"."BC_BJAuctionCompany_PurchPayment_FT__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."BC_BJAuctionCompany_PurchPayment_FT__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."BC_BJAuctionCompany_PurchPayment_FT__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."BC_BJAuctionCompany_PurchPayment_FT__dbt_tmp"
    end


   EXEC('create view dbo.BC_BJAuctionCompany_PurchPayment_FT__dbt_tmp_temp_view as
    
SELECT
    [EntryNo_],
    [VendorLedgerEntryNo_],
    [EntryType],
    [PostingDate],
    [DocumentType],
    [DocumentNo_],
    [Amount],
    [AmountLCY],
    [VendorNo_],
    [CurrencyCode],
    [UserID],
    [SourceCode],
    [TransactionNo_],
    [JournalBatchName],
    [ReasonCode],
    [DebitAmount],
    [CreditAmount],
    [DebitAmountLCY],
    [CreditAmountLCY],
    [InitialEntryDueDate],
    [InitialEntryGlobalDim_1],
    [InitialEntryGlobalDim_2],
    [Gen_Bus_PostingGroup],
    [Gen_Prod_PostingGroup],
    [UseTax],
    [VATBus_PostingGroup],
    [VATProd_PostingGroup],
    [InitialDocumentType],
    [AppliedVend_LedgerEntryNo_],
    [Unapplied],
    [UnappliedbyEntryNo_],
    [RemainingPmt_Disc_Possible],
    [Max_PaymentTolerance],
    [TaxJurisdictionCode],
    [ApplicationNo_],
    [LedgerEntryAmount]
from [stg].[BC_BJAuctionCompany_DetailedVendorLedgEntry_0972_FinalView]
where DocumentType=1
    ');

  CREATE TABLE "dbo"."BC_BJAuctionCompany_PurchPayment_FT__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.BC_BJAuctionCompany_PurchPayment_FT__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."BC_BJAuctionCompany_PurchPayment_FT__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."BC_BJAuctionCompany_PurchPayment_FT__dbt_tmp_temp_view"
    end


