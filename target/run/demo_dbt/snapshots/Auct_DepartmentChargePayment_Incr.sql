
      EXEC('
           BEGIN TRANSACTION
           update "DedicatedSQLpoolBJ"."stg"."Auct_DepartmentChargePayment_Incr"
          set dbt_valid_to = TMP.dbt_valid_to
          from "DedicatedSQLpoolBJ"."stg"."#Auct_DepartmentChargePayment_Incr__dbt_tmp" TMP
          where "DedicatedSQLpoolBJ"."stg"."Auct_DepartmentChargePayment_Incr".dbt_scd_id = TMP.dbt_scd_id
            and TMP.dbt_change_type in (''update'', ''delete'')
            and "DedicatedSQLpoolBJ"."stg"."Auct_DepartmentChargePayment_Incr".dbt_valid_to is null;

            insert into "DedicatedSQLpoolBJ"."stg"."Auct_DepartmentChargePayment_Incr" (
                  "DepartmentChargePaymentID", "Amount", "PaymentID", "ChargeID", "VendorAuctionID", "Created", "UpdateEventID", "SponsorAuctionID", "dbt_updated_at", "dbt_valid_from", "dbt_valid_to", "dbt_scd_id"
                  )
            select "DepartmentChargePaymentID", "Amount", "PaymentID", "ChargeID", "VendorAuctionID", "Created", "UpdateEventID", "SponsorAuctionID", "dbt_updated_at", "dbt_valid_from", "dbt_valid_to", "dbt_scd_id"
            from "DedicatedSQLpoolBJ"."stg"."#Auct_DepartmentChargePayment_Incr__dbt_tmp" 
            where dbt_change_type = ''insert'' ; 
           COMMIT TRANSACTION;
           ');


  