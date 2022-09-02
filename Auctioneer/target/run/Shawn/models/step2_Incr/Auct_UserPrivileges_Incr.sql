
      
  

    insert into "BJAC_DW_PROD"."stg"."Auct_UserPrivileges_Incr" ("hashValue", "effectiveTime", "UsersID", "PrivilegeID")
    (
        select "hashValue", "effectiveTime", "UsersID", "PrivilegeID"
        from "BJAC_DW_PROD"."stg"."#Auct_UserPrivileges_Incr__dbt_tmp"
    );

  