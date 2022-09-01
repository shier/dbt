
      
  

    insert into "BJAC_DW_PROD"."stg"."Auct_AA_WebData_Incr" ("hashValue", "effectiveTime", "CarInfoID", "Horsepower", "OriginalHorsepower")
    (
        select "hashValue", "effectiveTime", "CarInfoID", "Horsepower", "OriginalHorsepower"
        from "BJAC_DW_PROD"."stg"."#Auct_AA_WebData_Incr__dbt_tmp"
    );

  