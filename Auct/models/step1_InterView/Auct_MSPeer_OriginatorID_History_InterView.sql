{{ config(materialized='view',schema='stg')}}
Select
	[originator_id] [Originator_ID],
	cast([originator_publication] as nvarchar(4000)) [Originator_Publication],
	cast([originator_node] as nvarchar(4000)) [Originator_Node],
	cast([originator_db] as nvarchar(4000)) [Originator_Db],
	[originator_db_version] [Originator_Db_Version],
	[originator_version] [Originator_Version],
	[inserted_date] [Inserted_Date]
From stg.[Auct_MSPeer_OriginatorID_History_Raw]
