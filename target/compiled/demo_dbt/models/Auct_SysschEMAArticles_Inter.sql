
Select
	cast(description as nvarchar(4000)) Description,
	cast(dest_object as nvarchar(4000)) Dest_OBJect,
	cast(name as nvarchar(4000)) Name,
	cast(dest_owner as nvarchar(4000)) Dest_Owner,
	cast(creation_script as nvarchar(4000)) Creation_Script,
	status Status,
	type Type,
	artid ArtID,
	objid OBJID,
	pubid PubID,
	pre_creation_cmd Pre_Creation_cmd,
	cast(schema_option as nvarchar(4000)) SchEMA_Option
From Auct_SysschEMAArticles_Raw