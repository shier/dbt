{{ config(materialized='view',schema='stg')}}
Select
	[NODEID] [NodeID],
	[NODETREEID] [NodeTreeID],
	[LEFT] [Left],
	[RIGHT] [Right],
	[CONTENTID] [ContentID]
From stg.[Auct_Node_Raw]
