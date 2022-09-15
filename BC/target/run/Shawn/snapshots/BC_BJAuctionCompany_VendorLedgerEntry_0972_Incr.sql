
      EXEC('
           BEGIN TRANSACTION
           update "BJAC_DW_PROD"."stg"."BC_BJAuctionCompany_VendorLedgerEntry_0972_Incr"
          set dbt_valid_to = TMP.dbt_valid_to
          from "BJAC_DW_PROD"."stg"."#BC_BJAuctionCompany_VendorLedgerEntry_0972_Incr__dbt_tmp" TMP
          where "BJAC_DW_PROD"."stg"."BC_BJAuctionCompany_VendorLedgerEntry_0972_Incr".dbt_scd_id = TMP.dbt_scd_id
            and TMP.dbt_change_type in (''update'', ''delete'')
            and "BJAC_DW_PROD"."stg"."BC_BJAuctionCompany_VendorLedgerEntry_0972_Incr".dbt_valid_to is null;

            insert into "BJAC_DW_PROD"."stg"."BC_BJAuctionCompany_VendorLedgerEntry_0972_Incr" (
                  "EntryNo", "VendorNo", "DocumentNo", "Description", "CurrencyCode", "ReversedEntryNo", "Prepayment", "ExportedtoPaymentFile", "DimensionSetID", "Bal_AccountType", "TransactionNo", "AcceptedPmt_Disc_Tolerance", "ApplyingEntry", "Reversed", "ReversedbyEntryNo", "DocumentType", "Applies_toDoc_Type", "Open_S", "Positive", "ClosedbyEntryNo", "systemCreatedAt", "systemModifiedAt", "PostingDate", "DueDate", "Pmt_DiscountDate", "ClosedatDate", "DocumentDate", "Pmt_Disc_ToleranceDate", "timestamp", "VendorName", "systemId", "systemCreatedBy", "systemModifiedBy", "PaymentReference", "PaymentMethodCode", "Applies_toExt_Doc_No", "RecipientBankAccount", "MessagetoRecipient", "IRS1099Code", "Bal_AccountNo", "ExternalDocumentNo", "No_Series", "ClosedbyCurrencyCode", "ICPartnerCode", "CreditorNo", "SourceCode", "OnHold", "Applies_toDoc_No", "Applies_toID", "JournalBatchName", "ReasonCode", "Buy_fromVendorNo", "VendorPostingGroup", "GlobalDimension1Code", "GlobalDimension2Code", "PurchaserCode", "UserID", "Pmt_ToleranceLCY", "AmounttoApply", "IRS1099Amount", "ClosedbyCurrencyAmount", "AdjustedCurrencyFactor", "OriginalCurrencyFactor", "RemainingPmt_Disc_Possible", "Max_PaymentTolerance", "AcceptedPaymentTolerance", "PurchaseLCY", "Inv_DiscountLCY", "OriginalPmt_Disc_Possible", "Pmt_Disc_Rcd_LCY", "ClosedbyAmount", "ClosedbyAmountLCY", "dbt_updated_at", "dbt_valid_from", "dbt_valid_to", "dbt_scd_id"
                  )
            select "EntryNo", "VendorNo", "DocumentNo", "Description", "CurrencyCode", "ReversedEntryNo", "Prepayment", "ExportedtoPaymentFile", "DimensionSetID", "Bal_AccountType", "TransactionNo", "AcceptedPmt_Disc_Tolerance", "ApplyingEntry", "Reversed", "ReversedbyEntryNo", "DocumentType", "Applies_toDoc_Type", "Open_S", "Positive", "ClosedbyEntryNo", "systemCreatedAt", "systemModifiedAt", "PostingDate", "DueDate", "Pmt_DiscountDate", "ClosedatDate", "DocumentDate", "Pmt_Disc_ToleranceDate", "timestamp", "VendorName", "systemId", "systemCreatedBy", "systemModifiedBy", "PaymentReference", "PaymentMethodCode", "Applies_toExt_Doc_No", "RecipientBankAccount", "MessagetoRecipient", "IRS1099Code", "Bal_AccountNo", "ExternalDocumentNo", "No_Series", "ClosedbyCurrencyCode", "ICPartnerCode", "CreditorNo", "SourceCode", "OnHold", "Applies_toDoc_No", "Applies_toID", "JournalBatchName", "ReasonCode", "Buy_fromVendorNo", "VendorPostingGroup", "GlobalDimension1Code", "GlobalDimension2Code", "PurchaserCode", "UserID", "Pmt_ToleranceLCY", "AmounttoApply", "IRS1099Amount", "ClosedbyCurrencyAmount", "AdjustedCurrencyFactor", "OriginalCurrencyFactor", "RemainingPmt_Disc_Possible", "Max_PaymentTolerance", "AcceptedPaymentTolerance", "PurchaseLCY", "Inv_DiscountLCY", "OriginalPmt_Disc_Possible", "Pmt_Disc_Rcd_LCY", "ClosedbyAmount", "ClosedbyAmountLCY", "dbt_updated_at", "dbt_valid_from", "dbt_valid_to", "dbt_scd_id"
            from "BJAC_DW_PROD"."stg"."#BC_BJAuctionCompany_VendorLedgerEntry_0972_Incr__dbt_tmp" 
            where dbt_change_type = ''insert'' ; 
           COMMIT TRANSACTION;
           ');


  