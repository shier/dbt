
      EXEC('
           BEGIN TRANSACTION
           update "BJAC_DW_PROD"."stg"."Auct_FeeType_Incr"
          set dbt_valid_to = TMP.dbt_valid_to
          from "BJAC_DW_PROD"."stg"."#Auct_FeeType_Incr__dbt_tmp" TMP
          where "BJAC_DW_PROD"."stg"."Auct_FeeType_Incr".dbt_scd_id = TMP.dbt_scd_id
            and TMP.dbt_change_type in (''update'', ''delete'')
            and "BJAC_DW_PROD"."stg"."Auct_FeeType_Incr".dbt_valid_to is null;

            insert into "BJAC_DW_PROD"."stg"."Auct_FeeType_Incr" (
                  "FeeTypeID", "ShowonWeb", "DefaultAmount", "DefaultPercentage", "Name", "FeeCategoryID", "FeePayerID", "Created", "UpdateEventID", "TaxRateID", "AuctionID", "InActive", "ProcessorID", "UseMultiplier", "DebitProcessor", "CreditProcessor", "PaymentProcessor", "RefundProcessor", "WebStartDate", "WebEndDate", "Amenities", "SectionTitle", "ExpirationMessage", "FeeTypeGUID", "ApplicationReportID", "OnlineApplicationReportID", "DocumentID", "BCProcessFor", "BCdocumentType", "dbt_updated_at", "dbt_valid_from", "dbt_valid_to", "dbt_scd_id"
                  )
            select "FeeTypeID", "ShowonWeb", "DefaultAmount", "DefaultPercentage", "Name", "FeeCategoryID", "FeePayerID", "Created", "UpdateEventID", "TaxRateID", "AuctionID", "InActive", "ProcessorID", "UseMultiplier", "DebitProcessor", "CreditProcessor", "PaymentProcessor", "RefundProcessor", "WebStartDate", "WebEndDate", "Amenities", "SectionTitle", "ExpirationMessage", "FeeTypeGUID", "ApplicationReportID", "OnlineApplicationReportID", "DocumentID", "BCProcessFor", "BCdocumentType", "dbt_updated_at", "dbt_valid_from", "dbt_valid_to", "dbt_scd_id"
            from "BJAC_DW_PROD"."stg"."#Auct_FeeType_Incr__dbt_tmp"
            where dbt_change_type = ''insert'' ;
           COMMIT TRANSACTION;
           ');


  