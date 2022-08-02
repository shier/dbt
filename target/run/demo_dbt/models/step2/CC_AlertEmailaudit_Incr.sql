
      
  

    insert into "DedicatedSQLpoolBJ"."stg"."CC_AlertEmailaudit_Incr" ("hashValue", "effectiveTime", "DateSentUTC", "AlertEmailauditpk", "SavedSearchID", "MandrillrejectReason", "AlertFrequency", "EmailAddress", "MandrillID", "MandrillStatus")
    (
        select "hashValue", "effectiveTime", "DateSentUTC", "AlertEmailauditpk", "SavedSearchID", "MandrillrejectReason", "AlertFrequency", "EmailAddress", "MandrillID", "MandrillStatus"
        from "DedicatedSQLpoolBJ"."stg"."#CC_AlertEmailaudit_Incr__dbt_tmp"
    );

  