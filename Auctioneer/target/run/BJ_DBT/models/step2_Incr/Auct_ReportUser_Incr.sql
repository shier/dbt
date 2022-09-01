
      
  

    insert into "BJAC_DW_PROD"."stg"."Auct_ReportUser_Incr" ("hashValue", "effectiveTime", "ReportID", "UserID", "Title", "Category", "Description")
    (
        select "hashValue", "effectiveTime", "ReportID", "UserID", "Title", "Category", "Description"
        from "BJAC_DW_PROD"."stg"."#Auct_ReportUser_Incr__dbt_tmp"
    );

  