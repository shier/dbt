create view "stg"."Auct_Node_InterView__dbt_tmp" as
    
Select
	[NODEID] [NodeID],
	[NODETREEID] [NodeTreeID],
	[LEFT] [Left],
	[RIGHT] [Right],
	[CONTENTID] [ContentID]
From stg.[Auct_Node_Raw]
