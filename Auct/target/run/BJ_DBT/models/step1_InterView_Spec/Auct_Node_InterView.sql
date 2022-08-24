create view "stg"."Auct_Node_InterView__dbt_tmp" as
    
Select
	[NODEID] [NodeID],
	[NODETREEID] [NodeTreeID],
	[LEFT] [Left_C],
	[RIGHT] [Right_C],
	[CONTENTID] [ContentID]
From stg.[Auct_Node_Raw]
