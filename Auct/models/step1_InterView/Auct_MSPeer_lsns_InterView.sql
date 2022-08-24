{{ config(materialized='view',schema='stg')}}
Select
	[id] [ID],
	[last_updated] [Last_Updated],
	cast([originator] as nvarchar(4000)) [Originator],
	cast([originator_db] as nvarchar(4000)) [Originator_Db],
	cast([originator_publication] as nvarchar(4000)) [Originator_Publication],
	[originator_publication_id] [Originator_Publication_ID],
	[originator_db_version] [Originator_Db_Version],
	cast([originator_lsn] as nvarchar(4000)) [Originator_lsn],
	[originator_version] [Originator_Version],
	[originator_id] [Originator_ID]
From stg.[Auct_MSPeer_lsns_Raw]
