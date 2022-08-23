
With hashData as (
		Select
			HASHBYTES('SHA2_256', concat([TagID], Cast([ContactID] as varchar), Cast([PulseEventID] as varchar), Cast([CredentialTypeID] as varchar))) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_TrackContactTagAuction_Inter]
	)
Select * From hashData