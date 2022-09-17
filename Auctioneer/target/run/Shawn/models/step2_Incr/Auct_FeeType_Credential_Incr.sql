
      
      
      delete from "BJAC_DW_PROD"."stg"."Auct_FeeType_Credential_Incr"
          where (
                dbt_scd_id) in (
      select (dbt_scd_id)
      from "BJAC_DW_PROD"."stg"."#Auct_FeeType_Credential_Incr__dbt_tmp"
          );

      
      

      insert into "BJAC_DW_PROD"."stg"."Auct_FeeType_Credential_Incr" ("CredentialID", "FeeType_Credential_ID", "FeeTypeID", "CredentialQuantity", "CreatedByUserID", "CreatedDate", "QueueID", "CredentialName", "Active", "dbt_scd_id", "dbt_updated_at", "dbt_valid_from", "dbt_valid_to")
          (
      select "CredentialID", "FeeType_Credential_ID", "FeeTypeID", "CredentialQuantity", "CreatedByUserID", "CreatedDate", "QueueID", "CredentialName", "Active", "dbt_scd_id", "dbt_updated_at", "dbt_valid_from", "dbt_valid_to"
      from "BJAC_DW_PROD"."stg"."#Auct_FeeType_Credential_Incr__dbt_tmp"
          )


  