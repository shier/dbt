{{ config(materialized='view',schema='stg')}}
Select
	[NODETREEID] [NodeTreeID],
	[NODETREETYPEID] [NodeTreeTypeID],
	[ACTIVE] [Active]
From stg.[Auct_NodeTree_Raw]
