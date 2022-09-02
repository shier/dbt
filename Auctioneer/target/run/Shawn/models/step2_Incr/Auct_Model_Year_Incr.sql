
      
  

    insert into "BJAC_DW_PROD"."stg"."Auct_Model_Year_Incr" ("hashValue", "effectiveTime", "ModelID", "YearID")
    (
        select "hashValue", "effectiveTime", "ModelID", "YearID"
        from "BJAC_DW_PROD"."stg"."#Auct_Model_Year_Incr__dbt_tmp"
    );

  