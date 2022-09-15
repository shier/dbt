
      EXEC('
           BEGIN TRANSACTION
           update "BJAC_DW_PROD"."stg"."BC_BJAuctionCompany_GLEntry_0972_Incr"
          set dbt_valid_to = TMP.dbt_valid_to
          from "BJAC_DW_PROD"."stg"."#BC_BJAuctionCompany_GLEntry_0972_Incr__dbt_tmp" TMP
          where "BJAC_DW_PROD"."stg"."BC_BJAuctionCompany_GLEntry_0972_Incr".dbt_scd_id = TMP.dbt_scd_id
            and TMP.dbt_change_type in (''update'', ''delete'')
            and "BJAC_DW_PROD"."stg"."BC_BJAuctionCompany_GLEntry_0972_Incr".dbt_valid_to is null;

            insert into "BJAC_DW_PROD"."stg"."BC_BJAuctionCompany_GLEntry_0972_Incr" (
                  "EntryNo", "G_LAccountNo", "DocumentNo", "Description", "Bal_AccountNo", "No_Series", "TaxAreaCode", "TaxGroupCode", "VATBus_PostingGroup", "VATProd_PostingGroup", "ICPartnerCode", "JournalBatchName", "ReasonCode", "Gen_Bus_PostingGroup", "Gen_Prod_PostingGroup", "ExternalDocumentNo", "SourceNo", "GlobalDimension1Code", "GlobalDimension2Code", "UserID", "SourceCode", "JobNo", "BusinessUnitCode", "Prod_OrderNo", "STETransactionID", "systemId", "systemCreatedBy", "systemModifiedBy", "timestamp", "DocumentType", "System_CreatedEntry", "Amount", "Add__CurrencyCreditAmount", "Quantity", "VATAmount", "DebitAmount", "CreditAmount", "Additional_CurrencyAmount", "Add__CurrencyDebitAmount", "PostingDate", "DocumentDate", "LastModifiedDateTime", "systemCreatedAt", "systemModifiedAt", "FAEntryType", "FAEntryNo", "GST_HST", "UseTax", "CloseIncomeStatementDim_ID", "Reversed", "ReversedbyEntryNo", "ReversedEntryNo", "DimensionSetID", "Prior_YearEntry", "Gen_PostingType", "Bal_AccountType", "TransactionNo", "SourceType", "TaxLiable", "dbt_updated_at", "dbt_valid_from", "dbt_valid_to", "dbt_scd_id"
                  )
            select "EntryNo", "G_LAccountNo", "DocumentNo", "Description", "Bal_AccountNo", "No_Series", "TaxAreaCode", "TaxGroupCode", "VATBus_PostingGroup", "VATProd_PostingGroup", "ICPartnerCode", "JournalBatchName", "ReasonCode", "Gen_Bus_PostingGroup", "Gen_Prod_PostingGroup", "ExternalDocumentNo", "SourceNo", "GlobalDimension1Code", "GlobalDimension2Code", "UserID", "SourceCode", "JobNo", "BusinessUnitCode", "Prod_OrderNo", "STETransactionID", "systemId", "systemCreatedBy", "systemModifiedBy", "timestamp", "DocumentType", "System_CreatedEntry", "Amount", "Add__CurrencyCreditAmount", "Quantity", "VATAmount", "DebitAmount", "CreditAmount", "Additional_CurrencyAmount", "Add__CurrencyDebitAmount", "PostingDate", "DocumentDate", "LastModifiedDateTime", "systemCreatedAt", "systemModifiedAt", "FAEntryType", "FAEntryNo", "GST_HST", "UseTax", "CloseIncomeStatementDim_ID", "Reversed", "ReversedbyEntryNo", "ReversedEntryNo", "DimensionSetID", "Prior_YearEntry", "Gen_PostingType", "Bal_AccountType", "TransactionNo", "SourceType", "TaxLiable", "dbt_updated_at", "dbt_valid_from", "dbt_valid_to", "dbt_scd_id"
            from "BJAC_DW_PROD"."stg"."#BC_BJAuctionCompany_GLEntry_0972_Incr__dbt_tmp" 
            where dbt_change_type = ''insert'' ; 
           COMMIT TRANSACTION;
           ');


  