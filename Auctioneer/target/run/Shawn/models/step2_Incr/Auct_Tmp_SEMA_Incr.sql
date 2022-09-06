
      
  

    insert into "BJAC_DW_PROD"."stg"."Auct_Tmp_SEMA_Incr" ("hashValue", "effectiveTime", "Email", "First_Name", "Last_Name")
    (
        select "hashValue", "effectiveTime", "Email", "First_Name", "Last_Name"
        from "BJAC_DW_PROD"."stg"."#Auct_Tmp_SEMA_Incr__dbt_tmp"
    );

  