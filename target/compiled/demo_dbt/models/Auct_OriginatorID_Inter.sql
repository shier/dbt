
Select
	cast(originator_db as nvarchar(4000)) Originator_Db,
	inserted_date Inserted_Date,
	originator_id Originator_ID,
	originator_db_version Originator_Db_Version,
	originator_version Originator_Version,
	cast(originator_publication as nvarchar(4000)) Originator_Publication,
	cast(originator_node as nvarchar(4000)) Originator_Node
From Auct_OriginatorID_Raw