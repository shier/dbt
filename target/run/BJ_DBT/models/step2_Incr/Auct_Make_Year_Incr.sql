
      
  

    insert into "BJAC_DW_PROD"."stg"."Auct_Make_Year_Incr" ("hashValue", "effectiveTime", "MakeID", "YearID")
    (
        select "hashValue", "effectiveTime", "MakeID", "YearID"
        from "BJAC_DW_PROD"."stg"."#Auct_Make_Year_Incr__dbt_tmp"
    );

  