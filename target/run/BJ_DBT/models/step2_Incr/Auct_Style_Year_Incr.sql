
      
  

    insert into "BJAC_DW_PROD"."stg"."Auct_Style_Year_Incr" ("hashValue", "effectiveTime", "StyleID", "YearID")
    (
        select "hashValue", "effectiveTime", "StyleID", "YearID"
        from "BJAC_DW_PROD"."stg"."#Auct_Style_Year_Incr__dbt_tmp"
    );

  