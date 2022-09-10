
      EXEC('
           BEGIN TRANSACTION
           update "BJAC_DW_PROD"."stg"."Auct_BidLimitDeposit_Incr"
          set dbt_valid_to = TMP.dbt_valid_to
          from "BJAC_DW_PROD"."stg"."#Auct_BidLimitDeposit_Incr__dbt_tmp" TMP
          where "BJAC_DW_PROD"."stg"."Auct_BidLimitDeposit_Incr".dbt_scd_id = TMP.dbt_scd_id
            and TMP.dbt_change_type in (''update'', ''delete'')
            and "BJAC_DW_PROD"."stg"."Auct_BidLimitDeposit_Incr".dbt_valid_to is null;

            insert into "BJAC_DW_PROD"."stg"."Auct_BidLimitDeposit_Incr" (
                  "BidLimitDepositID", "Amount", "EnvelopeNumber", "PaymentMethodID", "PaymentDate", "PaymentNumber", "PaymentCleared", "ClearedDate", "Comments", "BidderID", "AuctionID", "Created", "UpdateEventID", "ConfirmIDEntification", "ReceivedSignature", "ConfirmedCount", "NoPurchase", "ReturnedOnSite", "Depositcashiering", "Depositmailed", "Mailedhome", "MailedBusiness", "MailedOther", "ReturnedOnSiteText", "DepositcashieringText", "ReturnedComments", "ReturnedDate", "ReturnedUsersID", "PaymentID", "InvoiceID", "RefundedByBidLimitDepositID", "RefundedBidLimitDepositID", "BidLimitDepositReturnTypeID", "dbt_updated_at", "dbt_valid_from", "dbt_valid_to", "dbt_scd_id"
                  )
            select "BidLimitDepositID", "Amount", "EnvelopeNumber", "PaymentMethodID", "PaymentDate", "PaymentNumber", "PaymentCleared", "ClearedDate", "Comments", "BidderID", "AuctionID", "Created", "UpdateEventID", "ConfirmIDEntification", "ReceivedSignature", "ConfirmedCount", "NoPurchase", "ReturnedOnSite", "Depositcashiering", "Depositmailed", "Mailedhome", "MailedBusiness", "MailedOther", "ReturnedOnSiteText", "DepositcashieringText", "ReturnedComments", "ReturnedDate", "ReturnedUsersID", "PaymentID", "InvoiceID", "RefundedByBidLimitDepositID", "RefundedBidLimitDepositID", "BidLimitDepositReturnTypeID", "dbt_updated_at", "dbt_valid_from", "dbt_valid_to", "dbt_scd_id"
            from "BJAC_DW_PROD"."stg"."#Auct_BidLimitDeposit_Incr__dbt_tmp"
            where dbt_change_type = ''insert'' ;
           COMMIT TRANSACTION;
           ');


  