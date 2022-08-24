
      
  

    insert into "DedicatedSQLpoolBJ"."stg"."Auct_Awsdms_Truncation_Safeguard_Incr" ("hashValue", "effectiveTime", "LatchTaskName", "LatchMachineGUID", "LatchKey", "LatchLocker")
    (
        select "hashValue", "effectiveTime", "LatchTaskName", "LatchMachineGUID", "LatchKey", "LatchLocker"
        from "DedicatedSQLpoolBJ"."stg"."#Auct_Awsdms_Truncation_Safeguard_Incr__dbt_tmp"
    );

  