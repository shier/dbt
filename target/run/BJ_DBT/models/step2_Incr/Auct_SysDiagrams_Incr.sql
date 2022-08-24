
      
  

    insert into "BJAC_DW_PROD"."stg"."Auct_SysDiagrams_Incr" ("hashValue", "effectiveTime", "Name", "Principal_ID", "Diagram_ID", "Version", "Definition")
    (
        select "hashValue", "effectiveTime", "Name", "Principal_ID", "Diagram_ID", "Version", "Definition"
        from "BJAC_DW_PROD"."stg"."#Auct_SysDiagrams_Incr__dbt_tmp"
    );

  