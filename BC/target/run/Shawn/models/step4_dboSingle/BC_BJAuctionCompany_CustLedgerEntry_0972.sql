
  
  if object_id ('"dbo"."BC_BJAuctionCompany_CustLedgerEntry_0972__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."BC_BJAuctionCompany_CustLedgerEntry_0972__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."BC_BJAuctionCompany_CustLedgerEntry_0972__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."BC_BJAuctionCompany_CustLedgerEntry_0972__dbt_tmp"
    end


   EXEC('create view dbo.BC_BJAuctionCompany_CustLedgerEntry_0972__dbt_tmp_temp_view as
    
Select
	cast([GlobalDimension2Code] as nvarchar(4000)) [GlobalDimension2Code],
	cast([ExternalDocumentNo_] as nvarchar(4000)) [ExternalDocumentNo_],
	cast([ReasonCode] as nvarchar(4000)) [ReasonCode],
	cast([Applies-toID] as nvarchar(4000)) [Applies-toID],
	cast([Applies-toExt_Doc_No_] as nvarchar(4000)) [Applies-toExt_Doc_No_],
	cast([ClosedbyCurrencyCode] as nvarchar(4000)) [ClosedbyCurrencyCode],
	cast([Date_TimeStamped] as nvarchar(4000)) [Date_TimeStamped],
	cast([STETransactionID] as nvarchar(4000)) [STETransactionID],
	cast([DirectDebitMandateID] as nvarchar(4000)) [DirectDebitMandateID],
	cast([FiscalInvoiceNumberPAC] as nvarchar(4000)) [FiscalInvoiceNumberPAC],
	cast([Date_TimeSent] as nvarchar(4000)) [Date_TimeSent],
	cast([$systemCreatedBy] as nvarchar(4000)) [$systemCreatedBy],
	cast([$systemId] as nvarchar(4000)) [$systemId],
	cast([QRCode] as varbinary(8000)) [QRCode],
	cast([Sell-toCustomerNo_] as nvarchar(4000)) [Sell-toCustomerNo_],
	cast([DocumentNo_] as nvarchar(4000)) [DocumentNo_],
	cast([DigitalStampPAC] as varbinary(8000)) [DigitalStampPAC],
	cast([DigitalStampSAT] as varbinary(8000)) [DigitalStampSAT],
	cast([timestamp] as varbinary(8000)) [timestamp],
	cast([OriginalCurrencyFactor] as numeric(19,4)) [OriginalCurrencyFactor],
	cast([ClosedbyCurrencyAmount] as numeric(19,4)) [ClosedbyCurrencyAmount],
	cast([AmounttoApply] as numeric(19,4)) [AmounttoApply],
	cast([ElectronicDocumentStatus] as int) [ElectronicDocumentStatus],
	cast([DimensionSetID] as int) [DimensionSetID],
	cast([Pmt_Disc_GivenLCY] as numeric(19,4)) [Pmt_Disc_GivenLCY],
	cast([SalesLCY] as numeric(19,4)) [SalesLCY],
	cast([LastIssuedReminderLevel] as int) [LastIssuedReminderLevel],
	cast([ClosingInterestCalculated] as int) [ClosingInterestCalculated],
	cast([TransactionNo_] as int) [TransactionNo_],
	cast([ExportedtoPaymentFile] as int) [ExportedtoPaymentFile],
	cast([ReversedEntryNo_] as int) [ReversedEntryNo_],
	cast([$systemModifiedAt] as datetime) [$systemModifiedAt],
	cast([ClosedbyEntryNo_] as int) [ClosedbyEntryNo_],
	cast([EntryNo_] as int) [EntryNo_],
	cast([DocumentDate] as datetime) [DocumentDate],
	cast([SourceCode] as nvarchar(4000)) [SourceCode],
	cast([SalespersonCode] as nvarchar(4000)) [SalespersonCode],
	cast([ICPartnerCode] as nvarchar(4000)) [ICPartnerCode],
	cast([No_Series] as nvarchar(4000)) [No_Series],
	cast([ErrorDescription] as nvarchar(4000)) [ErrorDescription],
	cast([Date_TimeCanceled] as nvarchar(4000)) [Date_TimeCanceled],
	cast([Description] as nvarchar(4000)) [Description],
	cast([RemainingPmt_Disc_Possible] as numeric(19,4)) [RemainingPmt_Disc_Possible],
	cast([AcceptedPaymentTolerance] as numeric(19,4)) [AcceptedPaymentTolerance],
	cast([ElectronicDocumentSent] as int) [ElectronicDocumentSent],
	cast([Inv_DiscountLCY] as numeric(19,4)) [Inv_DiscountLCY],
	cast([CalculateInterest] as int) [CalculateInterest],
	cast([Bal_AccountType] as int) [Bal_AccountType],
	cast([Prepayment] as int) [Prepayment],
	cast([ReversedbyEntryNo_] as int) [ReversedbyEntryNo_],
	cast([ApplyingEntry] as int) [ApplyingEntry],
	cast([Positive] as int) [Positive],
	cast([Applies-toDoc_Type] as int) [Applies-toDoc_Type],
	cast([DueDate] as datetime) [DueDate],
	cast([Pmt_DiscountDate] as datetime) [Pmt_DiscountDate],
	cast([ClosedatDate] as datetime) [ClosedatDate],
	cast([UserID] as nvarchar(4000)) [UserID],
	cast([GlobalDimension1Code] as nvarchar(4000)) [GlobalDimension1Code],
	cast([Bal_AccountNo_] as nvarchar(4000)) [Bal_AccountNo_],
	cast([JournalBatchName] as nvarchar(4000)) [JournalBatchName],
	cast([Applies-toDoc_No_] as nvarchar(4000)) [Applies-toDoc_No_],
	cast([RecipientBankAccount] as nvarchar(4000)) [RecipientBankAccount],
	cast([CertificateSerialNo_] as nvarchar(4000)) [CertificateSerialNo_],
	cast([TaxExemptionNo_] as nvarchar(4000)) [TaxExemptionNo_],
	cast([MessagetoRecipient] as nvarchar(4000)) [MessagetoRecipient],
	cast([PACWebServiceName] as nvarchar(4000)) [PACWebServiceName],
	cast([ErrorCode] as nvarchar(4000)) [ErrorCode],
	cast([$systemModifiedBy] as nvarchar(4000)) [$systemModifiedBy],
	cast([CustomerName] as nvarchar(4000)) [CustomerName],
	cast([Date_TimeFirstReq_Sent] as nvarchar(4000)) [Date_TimeFirstReq_Sent],
	cast([CustomerPostingGroup] as nvarchar(4000)) [CustomerPostingGroup],
	cast([CurrencyCode] as nvarchar(4000)) [CurrencyCode],
	cast([CustomerNo_] as nvarchar(4000)) [CustomerNo_],
	cast([OriginalString] as varbinary(8000)) [OriginalString],
	cast([OriginalDocumentXML] as varbinary(8000)) [OriginalDocumentXML],
	cast([Max_PaymentTolerance] as numeric(19,4)) [Max_PaymentTolerance],
	cast([AdjustedCurrencyFactor] as numeric(19,4)) [AdjustedCurrencyFactor],
	cast([Pmt_ToleranceLCY] as numeric(19,4)) [Pmt_ToleranceLCY],
	cast([No_ofE-DocumentsSent] as int) [No_ofE-DocumentsSent],
	cast([ClosedbyAmount] as numeric(19,4)) [ClosedbyAmount],
	cast([OriginalPmt_Disc_Possible] as numeric(19,4)) [OriginalPmt_Disc_Possible],
	cast([ProfitLCY] as numeric(19,4)) [ProfitLCY],
	cast([AcceptedPmt_Disc_Tolerance] as int) [AcceptedPmt_Disc_Tolerance],
	cast([$systemCreatedAt] as datetime) [$systemCreatedAt],
	cast([Open] as int) [Open],
	cast([Pmt_Disc_ToleranceDate] as datetime) [Pmt_Disc_ToleranceDate],
	cast([PostingDate] as datetime) [PostingDate],
	cast([OnHold] as nvarchar(4000)) [OnHold],
	cast([PaymentMethodCode] as nvarchar(4000)) [PaymentMethodCode],
	cast([PaymentReference] as nvarchar(4000)) [PaymentReference],
	cast([SignedDocumentXML] as varbinary(8000)) [SignedDocumentXML],
	cast([ClosedbyAmountLCY] as numeric(19,4)) [ClosedbyAmountLCY],
	cast([Reversed] as int) [Reversed],
	cast([DocumentType] as int) [DocumentType] 
From stg.[BC_BJAuctionCompany_CustLedgerEntry_0972_FinalView]
    ');

  CREATE TABLE "dbo"."BC_BJAuctionCompany_CustLedgerEntry_0972__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.BC_BJAuctionCompany_CustLedgerEntry_0972__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."BC_BJAuctionCompany_CustLedgerEntry_0972__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."BC_BJAuctionCompany_CustLedgerEntry_0972__dbt_tmp_temp_view"
    end


