
      
  

    insert into "DedicatedSQLpoolBJ"."stg"."AH_UserLogins_Incr" ("hashValue", "effectiveTime", "LoginprovIDEr", "ProvIDErKey", "UserID")
    (
        select "hashValue", "effectiveTime", "LoginprovIDEr", "ProvIDErKey", "UserID"
        from "DedicatedSQLpoolBJ"."stg"."#AH_UserLogins_Incr__dbt_tmp"
    );

  