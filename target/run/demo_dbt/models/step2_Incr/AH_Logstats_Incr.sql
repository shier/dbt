
      
  

    insert into "DedicatedSQLpoolBJ"."stg"."AH_Logstats_Incr" ("hashValue", "effectiveTime", "FromDate", "RangeMinutes", "EntryCount", "IsArchived", "Severity")
    (
        select "hashValue", "effectiveTime", "FromDate", "RangeMinutes", "EntryCount", "IsArchived", "Severity"
        from "DedicatedSQLpoolBJ"."stg"."#AH_Logstats_Incr__dbt_tmp"
    );

  