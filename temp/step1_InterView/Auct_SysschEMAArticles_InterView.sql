{{ config(materialized='view',schema='stg')}}
Select
	[artid] [ArtID],
	cast([creation_script] as nvarchar(4000)) [Creation_Script],
	cast([description] as nvarchar(4000)) [Description],
	cast([dest_object] as nvarchar(4000)) [Dest_OBJect],
	cast([name] as nvarchar(4000)) [Name],
	[objid] [OBJID],
	[pubid] [PubID],
	[pre_creation_cmd] [Pre_Creation_cmd],
	[status] [Status],
	[type] [Type],
	cast([schema_option] as nvarchar(4000)) [SchEMA_Option],
	cast([dest_owner] as nvarchar(4000)) [Dest_Owner]
From stg.[Auct_SysschEMAArticles_Raw]
