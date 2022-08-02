
With hashData as (
		Select
			HASHBYTES('SHA2_256', concat(Cast([Request_ID] as varchar), Cast([Peer_Version] as varchar), Cast([Peer_Db_Version] as varchar), Cast([Originator_ID] as varchar), Cast([Peer_Conflict_Retention] as varchar), Cast([Is_Peer] as varchar), Cast([ConflictDetection_Enabled] as varchar), Cast([Peer_Continue_OnConflict] as varchar), Cast([Modified_Date] as varchar), [Peer_Node], [Peer_Db], [Peer_SubScriptions], [Progress_Phase])) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_ConflictDetectionConfigResponse_Inter]
	)
Select * From hashData
