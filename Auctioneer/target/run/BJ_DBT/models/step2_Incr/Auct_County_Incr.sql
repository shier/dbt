
      
  

    insert into "BJAC_DW_PROD"."stg"."Auct_County_Incr" ("hashValue", "effectiveTime", "StateAbbreviation", "County")
    (
        select "hashValue", "effectiveTime", "StateAbbreviation", "County"
        from "BJAC_DW_PROD"."stg"."#Auct_County_Incr__dbt_tmp"
    );

  