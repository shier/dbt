
Select
	cast(originator_lsn as nvarchar(4000)) Originator_lsn,
	cast(originator_publication as nvarchar(4000)) Originator_Publication,
	cast(originator as nvarchar(4000)) Originator,
	cast(originator_db as nvarchar(4000)) Originator_Db,
	id ID,
	originator_publication_id Originator_Publication_ID,
	originator_db_version Originator_Db_Version,
	originator_version Originator_Version,
	originator_id Originator_ID,
	last_updated Last_Updated
From Auct_lsns_Raw