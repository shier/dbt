
      
  

    insert into "BJAC_DW_PROD"."stg"."CC_SecURItySystemRoleParentroles_Securitysystemrolechildroles_Incr" ("hashValue", "effectiveTime", "ChildRoles", "ParentRoles", "OID", "OptimisticLockField")
    (
        select "hashValue", "effectiveTime", "ChildRoles", "ParentRoles", "OID", "OptimisticLockField"
        from "BJAC_DW_PROD"."stg"."#CC_SecURItySystemRoleParentroles_Securitysystemrolechildroles_Incr__dbt_tmp"
    );

  