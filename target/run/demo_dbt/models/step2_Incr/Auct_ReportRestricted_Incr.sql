
      
  

    insert into "DedicatedSQLpoolBJ"."stg"."Auct_ReportRestricted_Incr" ("hashValue", "effectiveTime", "ReportID", "UserID")
    (
        select "hashValue", "effectiveTime", "ReportID", "UserID"
        from "DedicatedSQLpoolBJ"."stg"."#Auct_ReportRestricted_Incr__dbt_tmp"
    );

  