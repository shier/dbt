{{ config(materialized='table',schema='dbo')}}
Select
	cast([NodeTreeID] as int) [NODETREEID],
	cast([NodeTreeTypeID] as int) [NODETREETYPEID],
	cast([Active] as int) [ACTIVE] 
From stg.[Auct_NodeTree_FinalView]