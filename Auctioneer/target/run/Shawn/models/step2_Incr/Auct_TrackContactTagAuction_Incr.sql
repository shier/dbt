
      
  

    insert into "BJAC_DW_PROD"."stg"."Auct_TrackContactTagAuction_Incr" ("hashValue", "effectiveTime", "TagID", "ContactID", "PulseEventID", "CredentialTypeID")
    (
        select "hashValue", "effectiveTime", "TagID", "ContactID", "PulseEventID", "CredentialTypeID"
        from "BJAC_DW_PROD"."stg"."#Auct_TrackContactTagAuction_Incr__dbt_tmp"
    );

  