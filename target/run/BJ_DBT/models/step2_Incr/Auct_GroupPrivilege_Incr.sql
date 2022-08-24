
      
  

    insert into "BJAC_DW_PROD"."stg"."Auct_GroupPrivilege_Incr" ("hashValue", "effectiveTime", "GroupID", "PrivilegeID", "Deny", "Created", "UpdateEventID")
    (
        select "hashValue", "effectiveTime", "GroupID", "PrivilegeID", "Deny", "Created", "UpdateEventID"
        from "BJAC_DW_PROD"."stg"."#Auct_GroupPrivilege_Incr__dbt_tmp"
    );

  