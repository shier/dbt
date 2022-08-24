{{ config(materialized='view',schema='stg')}}
Select
	[NodeID],[NodeTreeID],[Left],[Right],[ContentID] 
From stg.[Auct_Node_Incr] 
Where [dbt_valid_to] is null