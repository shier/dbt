
      
  
    delete from "BJAC_DW_PROD"."stg"."Auct_Report_Form_Incr"
    where (dbt_scd_id) in (
        select (dbt_scd_id)
        from "BJAC_DW_PROD"."stg"."#Auct_Report_Form_Incr__dbt_tmp"
    );
    

    insert into "BJAC_DW_PROD"."stg"."Auct_Report_Form_Incr" ("FormID", "ReportFormID", "ReportID", "EventID", "PackageOrder", "AuctionID", "Active", "dbt_scd_id", "dbt_updated_at", "dbt_valid_from", "dbt_valid_to")
    (
        select "FormID", "ReportFormID", "ReportID", "EventID", "PackageOrder", "AuctionID", "Active", "dbt_scd_id", "dbt_updated_at", "dbt_valid_from", "dbt_valid_to"
        from "BJAC_DW_PROD"."stg"."#Auct_Report_Form_Incr__dbt_tmp"
    );

  