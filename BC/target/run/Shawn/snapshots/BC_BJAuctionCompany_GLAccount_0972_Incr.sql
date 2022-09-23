
      EXEC('
           BEGIN TRANSACTION
           update "BJAC_DW_PROD"."stg"."BC_BJAuctionCompany_GLAccount_0972_Incr"
          set dbt_valid_to = TMP.dbt_valid_to
          from "BJAC_DW_PROD"."stg"."#BC_BJAuctionCompany_GLAccount_0972_Incr__dbt_tmp" TMP
          where "BJAC_DW_PROD"."stg"."BC_BJAuctionCompany_GLAccount_0972_Incr".dbt_scd_id = TMP.dbt_scd_id
            and TMP.dbt_change_type in (''update'', ''delete'')
            and "BJAC_DW_PROD"."stg"."BC_BJAuctionCompany_GLAccount_0972_Incr".dbt_valid_to is null;

            insert into "BJAC_DW_PROD"."stg"."BC_BJAuctionCompany_GLAccount_0972_Incr" (
                  "No", "LastDateModified", "LastModifiedDateTime", "systemCreatedAt", "systemModifiedAt", "AccountType", "Income_Balance", "Debit_Credit", "Blocked", "DirectPosting", "ReconciliationAccount", "TaxLiable", "ExchangeRateAdjustment", "AccountCategory", "OmitDefaultDescr_inJnl", "AccountSubcategoryEntryNo", "APIAccountType", "NewPage", "No_ofBlankLines", "Indentation", "Consol_TranslationMethod", "Gen_PostingType", "AutomaticExt_Texts", "timestamp", "Picture", "Name", "SearchName", "GlobalDimension1Code", "GlobalDimension2Code", "No_2", "DefaultDeferralTemplateCode", "Id", "SATAccountCode", "systemId", "systemCreatedBy", "systemModifiedBy", "TaxGroupCode", "VATBus_PostingGroup", "VATProd_PostingGroup", "DefaultICPartnerG_LAcc_No", "CostTypeNo", "GIFICode", "Totaling", "Consol_DebitAcc", "Consol_CreditAcc", "Gen_Bus_PostingGroup", "Gen_Prod_PostingGroup", "TaxAreaCode", "dbt_updated_at", "dbt_valid_from", "dbt_valid_to", "dbt_scd_id"
                  )
            select "No", "LastDateModified", "LastModifiedDateTime", "systemCreatedAt", "systemModifiedAt", "AccountType", "Income_Balance", "Debit_Credit", "Blocked", "DirectPosting", "ReconciliationAccount", "TaxLiable", "ExchangeRateAdjustment", "AccountCategory", "OmitDefaultDescr_inJnl", "AccountSubcategoryEntryNo", "APIAccountType", "NewPage", "No_ofBlankLines", "Indentation", "Consol_TranslationMethod", "Gen_PostingType", "AutomaticExt_Texts", "timestamp", "Picture", "Name", "SearchName", "GlobalDimension1Code", "GlobalDimension2Code", "No_2", "DefaultDeferralTemplateCode", "Id", "SATAccountCode", "systemId", "systemCreatedBy", "systemModifiedBy", "TaxGroupCode", "VATBus_PostingGroup", "VATProd_PostingGroup", "DefaultICPartnerG_LAcc_No", "CostTypeNo", "GIFICode", "Totaling", "Consol_DebitAcc", "Consol_CreditAcc", "Gen_Bus_PostingGroup", "Gen_Prod_PostingGroup", "TaxAreaCode", "dbt_updated_at", "dbt_valid_from", "dbt_valid_to", "dbt_scd_id"
            from "BJAC_DW_PROD"."stg"."#BC_BJAuctionCompany_GLAccount_0972_Incr__dbt_tmp"
            where dbt_change_type = ''insert'' ;
           COMMIT TRANSACTION;
           ');


  