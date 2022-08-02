
Select
	received_date Received_Date,
	request_id Request_ID,
	peer_version Peer_Version,
	originator_id Originator_ID,
	peer_conflict_retention Peer_Conflict_Retention,
	cast(peer as nvarchar(4000)) Peer,
	cast(peer_db as nvarchar(4000)) Peer_Db,
	cast(connection_info as nvarchar(4000)) Connection_Info
From Auct_TopoLogyResponse_Raw