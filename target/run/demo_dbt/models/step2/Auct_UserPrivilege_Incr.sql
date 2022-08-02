
      
  

    insert into "DedicatedSQLpoolBJ"."stg"."Auct_UserPrivilege_Incr" ("hashValue", "effectiveTime", "Created", "UsersPrivilegeID", "UsersID", "PrivilegeID", "UpdateEventID", "Deny")
    (
        select "hashValue", "effectiveTime", "Created", "UsersPrivilegeID", "UsersID", "PrivilegeID", "UpdateEventID", "Deny"
        from "DedicatedSQLpoolBJ"."stg"."#Auct_UserPrivilege_Incr__dbt_tmp"
    );

  