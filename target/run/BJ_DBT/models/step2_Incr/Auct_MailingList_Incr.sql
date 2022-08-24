
      
  

    insert into "BJAC_DW_PROD"."stg"."Auct_MailingList_Incr" ("hashValue", "effectiveTime", "TransactionID", "FirstName", "LastName", "Middle", "Address1", "Address2", "City", "StateProvince", "PostalCode", "CountryID", "County", "EventID", "Careof", "MailListID", "Active")
    (
        select "hashValue", "effectiveTime", "TransactionID", "FirstName", "LastName", "Middle", "Address1", "Address2", "City", "StateProvince", "PostalCode", "CountryID", "County", "EventID", "Careof", "MailListID", "Active"
        from "BJAC_DW_PROD"."stg"."#Auct_MailingList_Incr__dbt_tmp"
    );

  