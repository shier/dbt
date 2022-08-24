
      
  

    insert into "DedicatedSQLpoolBJ"."stg"."Auct_ReportPermission_Incr" ("hashValue", "effectiveTime", "ReportID", "Permission")
    (
        select "hashValue", "effectiveTime", "ReportID", "Permission"
        from "DedicatedSQLpoolBJ"."stg"."#Auct_ReportPermission_Incr__dbt_tmp"
    );

  