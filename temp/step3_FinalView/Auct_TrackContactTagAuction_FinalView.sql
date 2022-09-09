{{ config(materialized='view',schema='stg')}}
Select
	[TagID],[ContactID],[PulseEventID],[CredentialTypeID] 
From [Auct_TrackContactTagAuction_Incr] 
Where [dbt_valid_to] is null