
      
  

    insert into "BJAC_DW_PROD"."stg"."Auct_FeeType_Credential_Incr" ("hashValue", "effectiveTime", "CredentialID", "FeeType_Credential_ID", "FeeTypeID", "CredentialQuantity", "CreatedByUserID", "CreatedDate", "QueueID", "CredentialName", "Active")
    (
        select "hashValue", "effectiveTime", "CredentialID", "FeeType_Credential_ID", "FeeTypeID", "CredentialQuantity", "CreatedByUserID", "CreatedDate", "QueueID", "CredentialName", "Active"
        from "BJAC_DW_PROD"."stg"."#Auct_FeeType_Credential_Incr__dbt_tmp"
    );

  