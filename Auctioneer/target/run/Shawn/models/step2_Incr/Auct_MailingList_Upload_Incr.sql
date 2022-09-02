
      
  

    insert into "BJAC_DW_PROD"."stg"."Auct_MailingList_Upload_Incr" ("hashValue", "effectiveTime", "TransactionID", "FirstName", "LastName", "Middle", "Address1", "Address2", "City", "StateProvince", "CountryID", "County", "EventID", "Careof", "PostalCode", "Created", "Active", "MailListUploadID", "ErrorMessage")
    (
        select "hashValue", "effectiveTime", "TransactionID", "FirstName", "LastName", "Middle", "Address1", "Address2", "City", "StateProvince", "CountryID", "County", "EventID", "Careof", "PostalCode", "Created", "Active", "MailListUploadID", "ErrorMessage"
        from "BJAC_DW_PROD"."stg"."#Auct_MailingList_Upload_Incr__dbt_tmp"
    );

  