
      
  

    insert into "DedicatedSQLpoolBJ"."stg"."Auct_SysTranschEMAs_Incr" ("hashValue", "effectiveTime", "TaBID", "Startlsn", "Endlsn", "TypeID")
    (
        select "hashValue", "effectiveTime", "TaBID", "Startlsn", "Endlsn", "TypeID"
        from "DedicatedSQLpoolBJ"."stg"."#Auct_SysTranschEMAs_Incr__dbt_tmp"
    );

  