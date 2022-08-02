
With hashData as (
		Select
			HASHBYTES('SHA2_256', concat(Cast([Received_Date] as varchar), Cast([Request_ID] as varchar), Cast([Peer_Version] as varchar), Cast([Originator_ID] as varchar), Cast([Peer_Conflict_Retention] as varchar), [Peer], [Peer_Db], [Connection_Info])) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_TopoLogyResponse_Inter]
	)
Select * From hashData
