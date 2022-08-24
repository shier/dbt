
      
  

    insert into "DedicatedSQLpoolBJ"."stg"."Auct_Mspub_IDEntity_Range_Incr" ("hashValue", "effectiveTime", "OBJID", "ThresHold", "Range", "Pub_Range", "Current_Pub_Range", "Last_Seed")
    (
        select "hashValue", "effectiveTime", "OBJID", "ThresHold", "Range", "Pub_Range", "Current_Pub_Range", "Last_Seed"
        from "DedicatedSQLpoolBJ"."stg"."#Auct_Mspub_IDEntity_Range_Incr__dbt_tmp"
    );

  