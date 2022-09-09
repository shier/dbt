create view "stg"."Auct_TrackContactTagAuction_FinalView__dbt_tmp" as
    
Select
	[TagID],[ContactID],[PulseEventID],[CredentialTypeID] 
From [Auct_TrackContactTagAuction_Incr] 
Where [dbt_valid_to] is null
