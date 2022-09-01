
      
  

    insert into "BJAC_DW_PROD"."stg"."Auct_SysTranschEMAs_Incr" ("hashValue", "effectiveTime", "TaBID", "Startlsn", "Endlsn", "TypeID")
    (
        select "hashValue", "effectiveTime", "TaBID", "Startlsn", "Endlsn", "TypeID"
        from "BJAC_DW_PROD"."stg"."#Auct_SysTranschEMAs_Incr__dbt_tmp"
    );

  