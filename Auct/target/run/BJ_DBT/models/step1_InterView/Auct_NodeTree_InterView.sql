create view "stg"."Auct_NodeTree_InterView__dbt_tmp" as
    
Select
	[NODETREEID] [NodeTreeID],
	[NODETREETYPEID] [NodeTreeTypeID],
	[ACTIVE] [Active]
From stg.[Auct_NodeTree_Raw]
