
      EXEC('
           BEGIN TRANSACTION
           update "BJAC_DW_PROD"."stg"."BC_BJAuctionCompany_DetailedVendorLedgEntry_0972_Incr"
          set dbt_valid_to = TMP.dbt_valid_to
          from "BJAC_DW_PROD"."stg"."#BC_BJAuctionCompany_DetailedVendorLedgEntry_0972_Incr__dbt_tmp" TMP
          where "BJAC_DW_PROD"."stg"."BC_BJAuctionCompany_DetailedVendorLedgEntry_0972_Incr".dbt_scd_id = TMP.dbt_scd_id
            and TMP.dbt_change_type in (''update'', ''delete'')
            and "BJAC_DW_PROD"."stg"."BC_BJAuctionCompany_DetailedVendorLedgEntry_0972_Incr".dbt_valid_to is null;

            insert into "BJAC_DW_PROD"."stg"."BC_BJAuctionCompany_DetailedVendorLedgEntry_0972_Incr" (
                  "EntryNo", "DocumentNo", "VendorNo", "systemId", "systemCreatedBy", "systemModifiedBy", "InitialEntryGlobalDim_2", "Gen_Bus_PostingGroup", "Gen_Prod_PostingGroup", "VATBus_PostingGroup", "VATProd_PostingGroup", "TaxJurisdictionCode", "CurrencyCode", "UserID", "SourceCode", "JournalBatchName", "ReasonCode", "InitialEntryGlobalDim_1", "timestamp", "Amount", "AmountLCY", "DebitAmount", "CreditAmount", "DebitAmountLCY", "CreditAmountLCY", "RemainingPmt_Disc_Possible", "Max_PaymentTolerance", "InitialDocumentType", "AppliedVend_LedgerEntryNo", "Unapplied", "UnappliedbyEntryNo", "ApplicationNo", "LedgerEntryAmount", "VendorLedgerEntryNo", "EntryType", "DocumentType", "TransactionNo", "UseTax", "PostingDate", "InitialEntryDueDate", "systemCreatedAt", "systemModifiedAt", "dbt_updated_at", "dbt_valid_from", "dbt_valid_to", "dbt_scd_id"
                  )
            select "EntryNo", "DocumentNo", "VendorNo", "systemId", "systemCreatedBy", "systemModifiedBy", "InitialEntryGlobalDim_2", "Gen_Bus_PostingGroup", "Gen_Prod_PostingGroup", "VATBus_PostingGroup", "VATProd_PostingGroup", "TaxJurisdictionCode", "CurrencyCode", "UserID", "SourceCode", "JournalBatchName", "ReasonCode", "InitialEntryGlobalDim_1", "timestamp", "Amount", "AmountLCY", "DebitAmount", "CreditAmount", "DebitAmountLCY", "CreditAmountLCY", "RemainingPmt_Disc_Possible", "Max_PaymentTolerance", "InitialDocumentType", "AppliedVend_LedgerEntryNo", "Unapplied", "UnappliedbyEntryNo", "ApplicationNo", "LedgerEntryAmount", "VendorLedgerEntryNo", "EntryType", "DocumentType", "TransactionNo", "UseTax", "PostingDate", "InitialEntryDueDate", "systemCreatedAt", "systemModifiedAt", "dbt_updated_at", "dbt_valid_from", "dbt_valid_to", "dbt_scd_id"
            from "BJAC_DW_PROD"."stg"."#BC_BJAuctionCompany_DetailedVendorLedgEntry_0972_Incr__dbt_tmp"
            where dbt_change_type = ''insert'' ;
           COMMIT TRANSACTION;
           ');


  