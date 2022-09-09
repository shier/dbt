
      
  
    delete from "BJAC_DW_PROD"."stg"."Auct_MailingList_Upload_Incr"
    where (dbt_scd_id) in (
        select (dbt_scd_id)
        from "BJAC_DW_PROD"."stg"."#Auct_MailingList_Upload_Incr__dbt_tmp"
    );
    

    insert into "BJAC_DW_PROD"."stg"."Auct_MailingList_Upload_Incr" ("TransactionID", "FirstName", "LastName", "Middle", "Address1", "Address2", "City", "StateProvince", "CountryID", "County", "EventID", "Careof", "PostalCode", "Created", "Active", "MailListUploadID", "ErrorMessage", "dbt_scd_id", "dbt_updated_at", "dbt_valid_from", "dbt_valid_to")
    (
        select "TransactionID", "FirstName", "LastName", "Middle", "Address1", "Address2", "City", "StateProvince", "CountryID", "County", "EventID", "Careof", "PostalCode", "Created", "Active", "MailListUploadID", "ErrorMessage", "dbt_scd_id", "dbt_updated_at", "dbt_valid_from", "dbt_valid_to"
        from "BJAC_DW_PROD"."stg"."#Auct_MailingList_Upload_Incr__dbt_tmp"
    );

  