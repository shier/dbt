
      
  

    insert into "BJAC_DW_PROD"."stg"."Auct_Mspub_IDEntity_Range_Incr" ("hashValue", "effectiveTime", "OBJID", "ThresHold", "Range", "Pub_Range", "Current_Pub_Range", "Last_Seed")
    (
        select "hashValue", "effectiveTime", "OBJID", "ThresHold", "Range", "Pub_Range", "Current_Pub_Range", "Last_Seed"
        from "BJAC_DW_PROD"."stg"."#Auct_Mspub_IDEntity_Range_Incr__dbt_tmp"
    );

  