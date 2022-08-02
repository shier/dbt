{{ config(materialized='table',schema='dbo')}}
Select
	cast([NodeID] as int) [NodeID],
	cast([NodeTreeID] as int) [NodeTreeID],
	cast([Left] as int) [Left],
	cast([Right] as int) [Right],
	cast([ContentID] as int) [ContentID] 
From stg.[Auct_Node_FinalView]