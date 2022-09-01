
      
  

    insert into "BJAC_DW_PROD"."stg"."Auct_EmailConfiguration_Incr" ("hashValue", "effectiveTime", "Host", "Domain", "UserName", "Password")
    (
        select "hashValue", "effectiveTime", "Host", "Domain", "UserName", "Password"
        from "BJAC_DW_PROD"."stg"."#Auct_EmailConfiguration_Incr__dbt_tmp"
    );

  