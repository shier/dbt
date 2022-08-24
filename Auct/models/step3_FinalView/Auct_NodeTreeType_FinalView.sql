{{ config(materialized='view',schema='stg')}}
Select
	[NodeTreeTypeID],[Name],[Active] 
From stg.[Auct_NodeTreeType_Incr] 
Where [dbt_valid_to] is null