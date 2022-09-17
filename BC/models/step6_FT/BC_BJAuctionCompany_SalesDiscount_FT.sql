{{ config(materialized='table',schema='dbo')}}
SELECT
    cle_row.No_ as [Invoice_DocumentNo_],
    cle.[EntryNo_],
    cle.[Cust_LedgerEntryNo_],
    cle.[EntryType],
    cle.[PostingDate],
    cle.[DocumentType],
    cle.[DocumentNo_],
    cle.[Amount],
    cle.[AmountLCY],
    cle.[CustomerNo_],
    cle.[CurrencyCode],
    cle.[UserID],
    cle.[SourceCode],
    cle.[TransactionNo_],
    cle.[JournalBatchName],
    cle.[ReasonCode],
    cle.[DebitAmount],
    cle.[CreditAmount],
    cle.[DebitAmountLCY],
    cle.[CreditAmountLCY],
    cle.[InitialEntryDueDate],
    cle.[InitialEntryGlobalDim_1],
    cle.[InitialEntryGlobalDim_2],
    cle.[Gen_Bus_PostingGroup],
    cle.[Gen_Prod_PostingGroup],
    cle.[UseTax],
    cle.[VATBus_PostingGroup],
    cle.[VATProd_PostingGroup],
    cle.[InitialDocumentType],
    cle.[AppliedCust_LedgerEntryNo_],
    cle.[Unapplied],
    cle.[UnappliedbyEntryNo_],
    cle.[RemainingPmt_Disc_Possible],
    cle.[Max_PaymentTolerance],
    cle.[TaxJurisdictionCode],
    cle.[ApplicationNo_],
    cle.[LedgerEntryAmount]

from [stg].[BC_BJAuctionCompany_DetailedCustLedgEntry_0972_FinalView] cle
inner join (
    select sih.No_, cle.Cust_LedgerEntryNo_
    from [stg].[BC_BJAuctionCompany_SalesInvoiceHeader_0972_FinalView] sih
    left join [stg].[BC_BJAuctionCompany_DetailedCustLedgEntry_0972_FinalView]cle on sih.No_=cle.DocumentNo_
    group by sih.No_, cle.Cust_LedgerEntryNo_
) cle_row
on cle.Cust_LedgerEntryNo_=cle_row.Cust_LedgerEntryNo_
where cle.DocumentType=3