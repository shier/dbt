create view "dbo_stg"."Auct_TrackContactTagAuction_InterView__dbt_tmp" as
    
Select
	cast([TAGID] as nvarchar(4000)) [TagID],
	[CONTACTID] [ContactID],
	[PULSEEVENTID] [PulseEventID],
	[CREDENTIALTYPEID] [CredentialTypeID]
From stg.[Auct_TrackContactTagAuction_Raw]
