
      
  

    insert into "BJAC_DW_PROD"."stg"."Auct_TimedLot_Incr" ("hashValue", "effectiveTime", "ConsignmentID", "TargetTime")
    (
        select "hashValue", "effectiveTime", "ConsignmentID", "TargetTime"
        from "BJAC_DW_PROD"."stg"."#Auct_TimedLot_Incr__dbt_tmp"
    );

  