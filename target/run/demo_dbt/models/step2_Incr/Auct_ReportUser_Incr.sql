
      
  

    insert into "DedicatedSQLpoolBJ"."stg"."Auct_ReportUser_Incr" ("hashValue", "effectiveTime", "ReportID", "UserID", "Title", "Category", "Description")
    (
        select "hashValue", "effectiveTime", "ReportID", "UserID", "Title", "Category", "Description"
        from "DedicatedSQLpoolBJ"."stg"."#Auct_ReportUser_Incr__dbt_tmp"
    );

  