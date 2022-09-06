
      
  

    insert into "BJAC_DW_PROD"."stg"."Auct_Report_Form_Incr" ("hashValue", "effectiveTime", "FormID", "ReportFormID", "ReportID", "EventID", "PackageOrder", "AuctionID", "Active")
    (
        select "hashValue", "effectiveTime", "FormID", "ReportFormID", "ReportID", "EventID", "PackageOrder", "AuctionID", "Active"
        from "BJAC_DW_PROD"."stg"."#Auct_Report_Form_Incr__dbt_tmp"
    );

  