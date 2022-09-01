
      
  

    insert into "BJAC_DW_PROD"."stg"."Auct_StateProvince_Incr" ("hashValue", "effectiveTime", "Abbreviation", "FullName", "CountryID", "Active")
    (
        select "hashValue", "effectiveTime", "Abbreviation", "FullName", "CountryID", "Active"
        from "BJAC_DW_PROD"."stg"."#Auct_StateProvince_Incr__dbt_tmp"
    );

  