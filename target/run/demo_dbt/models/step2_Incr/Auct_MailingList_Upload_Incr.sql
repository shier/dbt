
      
  

    insert into "DedicatedSQLpoolBJ"."stg"."Auct_MailingList_Upload_Incr" ("hashValue", "effectiveTime", "TransactionID", "FirstName", "LastName", "Middle", "Address1", "Address2", "City", "StateProvince", "CountryID", "County", "EventID", "Careof", "PostalCode", "Created", "Active", "MailListUploadID", "ErrorMessage")
    (
        select "hashValue", "effectiveTime", "TransactionID", "FirstName", "LastName", "Middle", "Address1", "Address2", "City", "StateProvince", "CountryID", "County", "EventID", "Careof", "PostalCode", "Created", "Active", "MailListUploadID", "ErrorMessage"
        from "DedicatedSQLpoolBJ"."stg"."#Auct_MailingList_Upload_Incr__dbt_tmp"
    );

  