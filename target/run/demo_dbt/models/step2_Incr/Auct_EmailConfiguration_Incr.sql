
      
  

    insert into "DedicatedSQLpoolBJ"."stg"."Auct_EmailConfiguration_Incr" ("hashValue", "effectiveTime", "Host", "Domain", "UserName", "Password")
    (
        select "hashValue", "effectiveTime", "Host", "Domain", "UserName", "Password"
        from "DedicatedSQLpoolBJ"."stg"."#Auct_EmailConfiguration_Incr__dbt_tmp"
    );

  