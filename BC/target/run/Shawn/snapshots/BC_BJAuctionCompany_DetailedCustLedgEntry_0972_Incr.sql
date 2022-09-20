
      EXEC('
           BEGIN TRANSACTION
           update "BJAC_DW_PROD"."stg"."BC_BJAuctionCompany_DetailedCustLedgEntry_0972_Incr"
          set dbt_valid_to = TMP.dbt_valid_to
          from "BJAC_DW_PROD"."stg"."#BC_BJAuctionCompany_DetailedCustLedgEntry_0972_Incr__dbt_tmp" TMP
          where "BJAC_DW_PROD"."stg"."BC_BJAuctionCompany_DetailedCustLedgEntry_0972_Incr".dbt_scd_id = TMP.dbt_scd_id
            and TMP.dbt_change_type in (''update'', ''delete'')
            and "BJAC_DW_PROD"."stg"."BC_BJAuctionCompany_DetailedCustLedgEntry_0972_Incr".dbt_valid_to is null;

            insert into "BJAC_DW_PROD"."stg"."BC_BJAuctionCompany_DetailedCustLedgEntry_0972_Incr" (
                  "EntryNo", "PostingDate", "InitialEntryDueDate", "systemCreatedAt", "systemModifiedAt", "InitialDocumentType", "AppliedCust_LedgerEntryNo", "Unapplied", "UnappliedbyEntryNo", "ApplicationNo", "LedgerEntryAmount", "Cust_LedgerEntryNo", "EntryType", "DocumentType", "TransactionNo", "UseTax", "Amount", "AmountLCY", "DebitAmount", "CreditAmount", "DebitAmountLCY", "CreditAmountLCY", "RemainingPmt_Disc_Possible", "Max_PaymentTolerance", "timestamp", "DocumentNo", "TaxJurisdictionCode", "systemId", "systemCreatedBy", "systemModifiedBy", "InitialEntryGlobalDim_1", "InitialEntryGlobalDim_2", "Gen_Bus_PostingGroup", "Gen_Prod_PostingGroup", "VATBus_PostingGroup", "VATProd_PostingGroup", "CustomerNo", "CurrencyCode", "UserID", "SourceCode", "JournalBatchName", "ReasonCode", "dbt_updated_at", "dbt_valid_from", "dbt_valid_to", "dbt_scd_id"
                  )
            select "EntryNo", "PostingDate", "InitialEntryDueDate", "systemCreatedAt", "systemModifiedAt", "InitialDocumentType", "AppliedCust_LedgerEntryNo", "Unapplied", "UnappliedbyEntryNo", "ApplicationNo", "LedgerEntryAmount", "Cust_LedgerEntryNo", "EntryType", "DocumentType", "TransactionNo", "UseTax", "Amount", "AmountLCY", "DebitAmount", "CreditAmount", "DebitAmountLCY", "CreditAmountLCY", "RemainingPmt_Disc_Possible", "Max_PaymentTolerance", "timestamp", "DocumentNo", "TaxJurisdictionCode", "systemId", "systemCreatedBy", "systemModifiedBy", "InitialEntryGlobalDim_1", "InitialEntryGlobalDim_2", "Gen_Bus_PostingGroup", "Gen_Prod_PostingGroup", "VATBus_PostingGroup", "VATProd_PostingGroup", "CustomerNo", "CurrencyCode", "UserID", "SourceCode", "JournalBatchName", "ReasonCode", "dbt_updated_at", "dbt_valid_from", "dbt_valid_to", "dbt_scd_id"
            from "BJAC_DW_PROD"."stg"."#BC_BJAuctionCompany_DetailedCustLedgEntry_0972_Incr__dbt_tmp"
            where dbt_change_type = ''insert'' ;
           COMMIT TRANSACTION;
           ');


  