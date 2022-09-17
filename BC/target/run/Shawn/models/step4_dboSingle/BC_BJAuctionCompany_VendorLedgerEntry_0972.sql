
  
  if object_id ('"dbo"."BC_BJAuctionCompany_VendorLedgerEntry_0972__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."BC_BJAuctionCompany_VendorLedgerEntry_0972__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."BC_BJAuctionCompany_VendorLedgerEntry_0972__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."BC_BJAuctionCompany_VendorLedgerEntry_0972__dbt_tmp"
    end


   EXEC('create view dbo.BC_BJAuctionCompany_VendorLedgerEntry_0972__dbt_tmp_temp_view as
    
Select
	cast([Pmt_Disc_Rcd_LCY] as numeric(19,4)) [Pmt_Disc_Rcd_LCY],
	cast([Inv_DiscountLCY] as numeric(19,4)) [Inv_DiscountLCY],
	cast([Max_PaymentTolerance] as numeric(19,4)) [Max_PaymentTolerance],
	cast([AdjustedCurrencyFactor] as numeric(19,4)) [AdjustedCurrencyFactor],
	cast([AmounttoApply] as numeric(19,4)) [AmounttoApply],
	cast([UserID] as nvarchar(4000)) [UserID],
	cast([GlobalDimension2Code] as nvarchar(4000)) [GlobalDimension2Code],
	cast([Buy-fromVendorNo_] as nvarchar(4000)) [Buy-fromVendorNo_],
	cast([Applies-toID] as nvarchar(4000)) [Applies-toID],
	cast([SourceCode] as nvarchar(4000)) [SourceCode],
	cast([ICPartnerCode] as nvarchar(4000)) [ICPartnerCode],
	cast([ExternalDocumentNo_] as nvarchar(4000)) [ExternalDocumentNo_],
	cast([IRS1099Code] as nvarchar(4000)) [IRS1099Code],
	cast([RecipientBankAccount] as nvarchar(4000)) [RecipientBankAccount],
	cast([PaymentReference] as nvarchar(4000)) [PaymentReference],
	cast([$systemCreatedBy] as nvarchar(4000)) [$systemCreatedBy],
	cast([VendorName] as nvarchar(4000)) [VendorName],
	cast([DocumentDate] as datetime) [DocumentDate],
	cast([Pmt_DiscountDate] as datetime) [Pmt_DiscountDate],
	cast([PostingDate] as datetime) [PostingDate],
	cast([ClosedbyEntryNo_] as int) [ClosedbyEntryNo_],
	cast([DocumentType] as int) [DocumentType],
	cast([ReversedbyEntryNo_] as int) [ReversedbyEntryNo_],
	cast([ApplyingEntry] as int) [ApplyingEntry],
	cast([Bal_AccountType] as int) [Bal_AccountType],
	cast([ExportedtoPaymentFile] as int) [ExportedtoPaymentFile],
	cast([ReversedEntryNo_] as int) [ReversedEntryNo_],
	cast([Description] as nvarchar(4000)) [Description],
	cast([VendorNo_] as nvarchar(4000)) [VendorNo_],
	cast([ClosedbyAmount] as numeric(19,4)) [ClosedbyAmount],
	cast([OriginalCurrencyFactor] as numeric(19,4)) [OriginalCurrencyFactor],
	cast([IRS1099Amount] as numeric(19,4)) [IRS1099Amount],
	cast([VendorPostingGroup] as nvarchar(4000)) [VendorPostingGroup],
	cast([JournalBatchName] as nvarchar(4000)) [JournalBatchName],
	cast([Applies-toDoc_No_] as nvarchar(4000)) [Applies-toDoc_No_],
	cast([No_Series] as nvarchar(4000)) [No_Series],
	cast([PaymentMethodCode] as nvarchar(4000)) [PaymentMethodCode],
	cast([Pmt_Disc_ToleranceDate] as datetime) [Pmt_Disc_ToleranceDate],
	cast([$systemCreatedAt] as datetime) [$systemCreatedAt],
	cast([Positive] as int) [Positive],
	cast([Applies-toDoc_Type] as int) [Applies-toDoc_Type],
	cast([EntryNo_] as int) [EntryNo_],
	cast([TransactionNo_] as int) [TransactionNo_],
	cast([ClosedbyAmountLCY] as numeric(19,4)) [ClosedbyAmountLCY],
	cast([OriginalPmt_Disc_Possible] as numeric(19,4)) [OriginalPmt_Disc_Possible],
	cast([PurchaseLCY] as numeric(19,4)) [PurchaseLCY],
	cast([AcceptedPaymentTolerance] as numeric(19,4)) [AcceptedPaymentTolerance],
	cast([RemainingPmt_Disc_Possible] as numeric(19,4)) [RemainingPmt_Disc_Possible],
	cast([ClosedbyCurrencyAmount] as numeric(19,4)) [ClosedbyCurrencyAmount],
	cast([Pmt_ToleranceLCY] as numeric(19,4)) [Pmt_ToleranceLCY],
	cast([ReasonCode] as nvarchar(4000)) [ReasonCode],
	cast([OnHold] as nvarchar(4000)) [OnHold],
	cast([CreditorNo_] as nvarchar(4000)) [CreditorNo_],
	cast([ClosedbyCurrencyCode] as nvarchar(4000)) [ClosedbyCurrencyCode],
	cast([Bal_AccountNo_] as nvarchar(4000)) [Bal_AccountNo_],
	cast([MessagetoRecipient] as nvarchar(4000)) [MessagetoRecipient],
	cast([Applies-toExt_Doc_No_] as nvarchar(4000)) [Applies-toExt_Doc_No_],
	cast([$systemModifiedBy] as nvarchar(4000)) [$systemModifiedBy],
	cast([$systemId] as nvarchar(4000)) [$systemId],
	cast([timestamp] as varbinary(8000)) [timestamp],
	cast([ClosedatDate] as datetime) [ClosedatDate],
	cast([DueDate] as datetime) [DueDate],
	cast([$systemModifiedAt] as datetime) [$systemModifiedAt],
	cast([Open] as int) [Open],
	cast([Reversed] as int) [Reversed],
	cast([AcceptedPmt_Disc_Tolerance] as int) [AcceptedPmt_Disc_Tolerance],
	cast([DimensionSetID] as int) [DimensionSetID],
	cast([Prepayment] as int) [Prepayment],
	cast([CurrencyCode] as nvarchar(4000)) [CurrencyCode],
	cast([DocumentNo_] as nvarchar(4000)) [DocumentNo_],
	cast([PurchaserCode] as nvarchar(4000)) [PurchaserCode],
	cast([GlobalDimension1Code] as nvarchar(4000)) [GlobalDimension1Code] 
From stg.[BC_BJAuctionCompany_VendorLedgerEntry_0972_FinalView]
    ');

  CREATE TABLE "dbo"."BC_BJAuctionCompany_VendorLedgerEntry_0972__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.BC_BJAuctionCompany_VendorLedgerEntry_0972__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."BC_BJAuctionCompany_VendorLedgerEntry_0972__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."BC_BJAuctionCompany_VendorLedgerEntry_0972__dbt_tmp_temp_view"
    end


