{{ config(materialized='table',schema='dbo')}}
Select
	cast([NodeID] as int) [NODEID],
	cast([NodeTreeID] as int) [NODETREEID],
	cast([Left] as int) [LEFT],
	cast([Right] as int) [RIGHT],
	cast([ContentID] as int) [CONTENTID] 
From stg.[Auct_Node_FinalView]