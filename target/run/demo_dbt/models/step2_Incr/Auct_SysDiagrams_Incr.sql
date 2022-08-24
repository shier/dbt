
      
  

    insert into "DedicatedSQLpoolBJ"."stg"."Auct_SysDiagrams_Incr" ("hashValue", "effectiveTime", "Name", "Principal_ID", "Diagram_ID", "Version", "Definition")
    (
        select "hashValue", "effectiveTime", "Name", "Principal_ID", "Diagram_ID", "Version", "Definition"
        from "DedicatedSQLpoolBJ"."stg"."#Auct_SysDiagrams_Incr__dbt_tmp"
    );

  