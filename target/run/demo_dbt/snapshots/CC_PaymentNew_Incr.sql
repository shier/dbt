
      EXEC('
           BEGIN TRANSACTION
           update "DedicatedSQLpoolBJ"."stg"."CC_PaymentNew_Incr"
          set dbt_valid_to = TMP.dbt_valid_to
          from "DedicatedSQLpoolBJ"."stg"."#CC_PaymentNew_Incr__dbt_tmp" TMP
          where "DedicatedSQLpoolBJ"."stg"."CC_PaymentNew_Incr".dbt_scd_id = TMP.dbt_scd_id
            and TMP.dbt_change_type in (''update'', ''delete'')
            and "DedicatedSQLpoolBJ"."stg"."CC_PaymentNew_Incr".dbt_valid_to is null;

            insert into "DedicatedSQLpoolBJ"."stg"."CC_PaymentNew_Incr" (
                  "ID", "CreateDate", "ModifyDate", "UserID", "PaymentTypeID", "CouponID", "IsActive", "Success", "OrderTotal", "OrderDiscount", "ChargeAmount", "CardName", "CardCity", "CardAddress", "CardState", "CardCountry", "Month", "Year", "CardLastFour", "Token", "PayerId", "IsApproved", "AuthorizationCode", "ResponseCode", "ResponseReasonCode", "TransactionID", "ErrorCode", "ErrorTransactionID", "PaymentStatus", "dbt_updated_at", "dbt_valid_from", "dbt_valid_to", "dbt_scd_id"
                  )
            select "ID", "CreateDate", "ModifyDate", "UserID", "PaymentTypeID", "CouponID", "IsActive", "Success", "OrderTotal", "OrderDiscount", "ChargeAmount", "CardName", "CardCity", "CardAddress", "CardState", "CardCountry", "Month", "Year", "CardLastFour", "Token", "PayerId", "IsApproved", "AuthorizationCode", "ResponseCode", "ResponseReasonCode", "TransactionID", "ErrorCode", "ErrorTransactionID", "PaymentStatus", "dbt_updated_at", "dbt_valid_from", "dbt_valid_to", "dbt_scd_id"
            from "DedicatedSQLpoolBJ"."stg"."#CC_PaymentNew_Incr__dbt_tmp" 
            where dbt_change_type = ''insert'' ; 
           COMMIT TRANSACTION;
           ');


  