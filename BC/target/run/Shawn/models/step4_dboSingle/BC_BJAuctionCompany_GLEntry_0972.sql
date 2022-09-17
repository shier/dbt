
  
  if object_id ('"dbo"."BC_BJAuctionCompany_GLEntry_0972__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."BC_BJAuctionCompany_GLEntry_0972__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."BC_BJAuctionCompany_GLEntry_0972__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."BC_BJAuctionCompany_GLEntry_0972__dbt_tmp"
    end


   EXEC('create view dbo.BC_BJAuctionCompany_GLEntry_0972__dbt_tmp_temp_view as
    
Select
	cast([TransactionNo_] as int) [TransactionNo_],
	cast([Reversed] as int) [Reversed],
	cast([UseTax] as int) [UseTax],
	cast([FAEntryNo_] as int) [FAEntryNo_],
	cast([$systemModifiedAt] as datetime) [$systemModifiedAt],
	cast([DocumentDate] as datetime) [DocumentDate],
	cast([Add_-CurrencyDebitAmount] as numeric(19,4)) [Add_-CurrencyDebitAmount],
	cast([Amount] as numeric(19,4)) [Amount],
	cast([timestamp] as varbinary(8000)) [timestamp],
	cast([STETransactionID] as nvarchar(4000)) [STETransactionID],
	cast([SourceCode] as nvarchar(4000)) [SourceCode],
	cast([GlobalDimension2Code] as nvarchar(4000)) [GlobalDimension2Code],
	cast([SourceNo_] as nvarchar(4000)) [SourceNo_],
	cast([Gen_Bus_PostingGroup] as nvarchar(4000)) [Gen_Bus_PostingGroup],
	cast([JournalBatchName] as nvarchar(4000)) [JournalBatchName],
	cast([VATProd_PostingGroup] as nvarchar(4000)) [VATProd_PostingGroup],
	cast([G_LAccountNo_] as nvarchar(4000)) [G_LAccountNo_],
	cast([SourceType] as int) [SourceType],
	cast([Bal_AccountType] as int) [Bal_AccountType],
	cast([Prior-YearEntry] as int) [Prior-YearEntry],
	cast([ReversedEntryNo_] as int) [ReversedEntryNo_],
	cast([LastModifiedDateTime] as datetime) [LastModifiedDateTime],
	cast([CreditAmount] as numeric(19,4)) [CreditAmount],
	cast([VATAmount] as numeric(19,4)) [VATAmount],
	cast([DocumentType] as int) [DocumentType],
	cast([$systemCreatedBy] as nvarchar(4000)) [$systemCreatedBy],
	cast([BusinessUnitCode] as nvarchar(4000)) [BusinessUnitCode],
	cast([Gen_Prod_PostingGroup] as nvarchar(4000)) [Gen_Prod_PostingGroup],
	cast([ReasonCode] as nvarchar(4000)) [ReasonCode],
	cast([TaxGroupCode] as nvarchar(4000)) [TaxGroupCode],
	cast([No_Series] as nvarchar(4000)) [No_Series],
	cast([Description] as nvarchar(4000)) [Description],
	cast([TaxLiable] as int) [TaxLiable],
	cast([Gen_PostingType] as int) [Gen_PostingType],
	cast([DimensionSetID] as int) [DimensionSetID],
	cast([GST_HST] as int) [GST_HST],
	cast([FAEntryType] as int) [FAEntryType],
	cast([$systemCreatedAt] as datetime) [$systemCreatedAt],
	cast([PostingDate] as datetime) [PostingDate],
	cast([Quantity] as numeric(19,4)) [Quantity],
	cast([Add_-CurrencyCreditAmount] as numeric(19,4)) [Add_-CurrencyCreditAmount],
	cast([System-CreatedEntry] as int) [System-CreatedEntry],
	cast([EntryNo_] as int) [EntryNo_],
	cast([$systemModifiedBy] as nvarchar(4000)) [$systemModifiedBy],
	cast([$systemId] as nvarchar(4000)) [$systemId],
	cast([Prod_OrderNo_] as nvarchar(4000)) [Prod_OrderNo_],
	cast([JobNo_] as nvarchar(4000)) [JobNo_],
	cast([UserID] as nvarchar(4000)) [UserID],
	cast([GlobalDimension1Code] as nvarchar(4000)) [GlobalDimension1Code],
	cast([ExternalDocumentNo_] as nvarchar(4000)) [ExternalDocumentNo_],
	cast([ICPartnerCode] as nvarchar(4000)) [ICPartnerCode],
	cast([Bal_AccountNo_] as nvarchar(4000)) [Bal_AccountNo_],
	cast([VATBus_PostingGroup] as nvarchar(4000)) [VATBus_PostingGroup],
	cast([DocumentNo_] as nvarchar(4000)) [DocumentNo_],
	cast([ReversedbyEntryNo_] as int) [ReversedbyEntryNo_],
	cast([CloseIncomeStatementDim_ID] as int) [CloseIncomeStatementDim_ID],
	cast([Additional-CurrencyAmount] as numeric(19,4)) [Additional-CurrencyAmount],
	cast([DebitAmount] as numeric(19,4)) [DebitAmount],
	cast([TaxAreaCode] as nvarchar(4000)) [TaxAreaCode] 
From stg.[BC_BJAuctionCompany_GLEntry_0972_FinalView]
    ');

  CREATE TABLE "dbo"."BC_BJAuctionCompany_GLEntry_0972__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.BC_BJAuctionCompany_GLEntry_0972__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."BC_BJAuctionCompany_GLEntry_0972__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."BC_BJAuctionCompany_GLEntry_0972__dbt_tmp_temp_view"
    end


