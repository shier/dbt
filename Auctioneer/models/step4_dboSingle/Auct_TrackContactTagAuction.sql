{{ config(materialized='table',schema='dbo')}}
Select
	cast([TagID] as nvarchar(4000)) [TAGID],
	cast([ContactID] as int) [CONTACTID],
	cast([PulseEventID] as int) [PULSEEVENTID],
	cast([CredentialTypeID] as int) [CREDENTIALTYPEID] 
From stg.[Auct_TrackContactTagAuction_FinalView]