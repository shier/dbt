
      
  

    insert into "DedicatedSQLpoolBJ"."stg"."CC_SecURItySystemRoleParentroles_Securitysystemrolechildroles_Incr" ("hashValue", "effectiveTime", "ChildRoles", "ParentRoles", "OID", "OptimisticLockField")
    (
        select "hashValue", "effectiveTime", "ChildRoles", "ParentRoles", "OID", "OptimisticLockField"
        from "DedicatedSQLpoolBJ"."stg"."#CC_SecURItySystemRoleParentroles_Securitysystemrolechildroles_Incr__dbt_tmp"
    );

  