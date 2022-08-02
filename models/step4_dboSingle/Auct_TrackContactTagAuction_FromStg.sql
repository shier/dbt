{{ config(materialized='table',schema='dbo')}}
Select
	cast([TagID] as nvarchar(4000)) [TagID],
	cast([ContactID] as int) [ContactID],
	cast([PulseEventID] as int) [PulseEventID],
	cast([CredentialTypeID] as int) [CredentialTypeID] 
From stg.[Auct_TrackContactTagAuction_FinalView]