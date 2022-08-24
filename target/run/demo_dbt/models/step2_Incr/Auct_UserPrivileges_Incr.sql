
      
  

    insert into "DedicatedSQLpoolBJ"."stg"."Auct_UserPrivileges_Incr" ("hashValue", "effectiveTime", "UsersID", "PrivilegeID")
    (
        select "hashValue", "effectiveTime", "UsersID", "PrivilegeID"
        from "DedicatedSQLpoolBJ"."stg"."#Auct_UserPrivileges_Incr__dbt_tmp"
    );

  