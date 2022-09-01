{{ config(materialized='view',schema='stg')}}
Select
	cast([TAGID] as nvarchar(4000)) [TagID],
	[CONTACTID] [ContactID],
	[PULSEEVENTID] [PulseEventID],
	[CREDENTIALTYPEID] [CredentialTypeID]
From stg.[Auct_TrackContactTagAuction_Raw]
