
With hashData as (
		Select
			HASHBYTES('SHA2_256', concat([TagID], Cast([ContactID] as varchar), Cast([PulseEventID] as varchar), Cast([CredentialTypeID] as varchar))) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_TrackContactTagAuction_InterView]
	)
Select * From hashData

	where not exists 
	(
		select hashValue 
		from "DedicatedSQLpoolBJ"."stg"."Auct_TrackContactTagAuction_Incr" compareData
		where hashData.hashValue=compareData.hashValue
	)
