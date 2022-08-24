
      
  

    insert into "DedicatedSQLpoolBJ"."stg"."Auct_GroupPrivilege_Incr" ("hashValue", "effectiveTime", "GroupID", "PrivilegeID", "Deny", "Created", "UpdateEventID")
    (
        select "hashValue", "effectiveTime", "GroupID", "PrivilegeID", "Deny", "Created", "UpdateEventID"
        from "DedicatedSQLpoolBJ"."stg"."#Auct_GroupPrivilege_Incr__dbt_tmp"
    );

  