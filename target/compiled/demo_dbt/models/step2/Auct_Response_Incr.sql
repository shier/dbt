
With hashData as (
		Select
			HASHBYTES('MD5', concat(Peer, Peer_Db, Cast(Received_Date as varchar))) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_Response_Inter]
	)
Select * From hashData
