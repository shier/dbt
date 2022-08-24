{{ config(materialized='view',schema='stg')}}
Select
	[NodeTreeID],[NodeTreeTypeID],[Active] 
From stg.[Auct_NodeTree_Incr] 
Where [dbt_valid_to] is null