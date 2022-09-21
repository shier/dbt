
Select
	cast([Originator_Publication] as nvarchar(4000)) [originator_publication],
	cast([Originator_ID] as int) [originator_id],
	cast([Originator_Node] as nvarchar(4000)) [originator_node],
	cast([Originator_Db] as nvarchar(4000)) [originator_db],
	cast([Originator_Db_Version] as int) [originator_db_version],
	cast([Originator_Version] as int) [originator_version],
	cast([Inserted_Date] as datetime) [inserted_date] 
From stg.[Auct_MSPeer_OriginatorID_History_FinalView]