
      
  

    insert into "BJAC_DW_PROD"."stg"."Auct_ReportRestricted_Incr" ("hashValue", "effectiveTime", "ReportID", "UserID")
    (
        select "hashValue", "effectiveTime", "ReportID", "UserID"
        from "BJAC_DW_PROD"."stg"."#Auct_ReportRestricted_Incr__dbt_tmp"
    );

  