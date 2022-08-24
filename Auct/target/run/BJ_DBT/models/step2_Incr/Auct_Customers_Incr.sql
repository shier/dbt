
      
  

    insert into "BJAC_DW_PROD"."stg"."Auct_Customers_Incr" ("hashValue", "effectiveTime", "ContactID", "CustomerAccountID", "Name", "EmailAddress", "Type", "ContactTypeID")
    (
        select "hashValue", "effectiveTime", "ContactID", "CustomerAccountID", "Name", "EmailAddress", "Type", "ContactTypeID"
        from "BJAC_DW_PROD"."stg"."#Auct_Customers_Incr__dbt_tmp"
    );

  