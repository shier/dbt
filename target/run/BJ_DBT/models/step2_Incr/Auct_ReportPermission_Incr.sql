
      
  

    insert into "BJAC_DW_PROD"."stg"."Auct_ReportPermission_Incr" ("hashValue", "effectiveTime", "ReportID", "Permission")
    (
        select "hashValue", "effectiveTime", "ReportID", "Permission"
        from "BJAC_DW_PROD"."stg"."#Auct_ReportPermission_Incr__dbt_tmp"
    );

  