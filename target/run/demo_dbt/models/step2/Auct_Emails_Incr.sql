
      
  

    insert into "DedicatedSQLpoolBJ"."stg"."Auct_Emails_Incr" ("hashValue", "effectiveTime", "Created", "EmailID", "ContactID", "CustomerAccountID", "UpdateEventID", "EmailAddress", "Use", "EmailBlastOptin", "EmailBlastOptinPartners", "Active")
    (
        select "hashValue", "effectiveTime", "Created", "EmailID", "ContactID", "CustomerAccountID", "UpdateEventID", "EmailAddress", "Use", "EmailBlastOptin", "EmailBlastOptinPartners", "Active"
        from "DedicatedSQLpoolBJ"."stg"."#Auct_Emails_Incr__dbt_tmp"
    );

  