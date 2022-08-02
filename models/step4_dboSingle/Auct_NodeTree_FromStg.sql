{{ config(materialized='table',schema='dbo')}}
Select
	cast([NodeTreeID] as int) [NodeTreeID],
	cast([NodeTreeTypeID] as int) [NodeTreeTypeID],
	cast([Active] as int) [Active] 
From stg.[Auct_NodeTree_FinalView]