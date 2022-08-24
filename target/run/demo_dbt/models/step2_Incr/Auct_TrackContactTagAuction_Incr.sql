
      
  

    insert into "DedicatedSQLpoolBJ"."stg"."Auct_TrackContactTagAuction_Incr" ("hashValue", "effectiveTime", "TagID", "ContactID", "PulseEventID", "CredentialTypeID")
    (
        select "hashValue", "effectiveTime", "TagID", "ContactID", "PulseEventID", "CredentialTypeID"
        from "DedicatedSQLpoolBJ"."stg"."#Auct_TrackContactTagAuction_Incr__dbt_tmp"
    );

  