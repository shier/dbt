
      
  

    insert into "BJAC_DW_PROD"."stg"."AH_UserLogins_Incr" ("hashValue", "effectiveTime", "LoginprovIDEr", "ProvIDErKey", "UserID")
    (
        select "hashValue", "effectiveTime", "LoginprovIDEr", "ProvIDErKey", "UserID"
        from "BJAC_DW_PROD"."stg"."#AH_UserLogins_Incr__dbt_tmp"
    );

  