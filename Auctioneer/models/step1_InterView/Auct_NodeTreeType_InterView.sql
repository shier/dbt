{{ config(materialized='view',schema='stg')}}
Select
	[NODETREETYPEID] [NodeTreeTypeID],
	cast([NAME] as nvarchar(4000)) [Name],
	[ACTIVE] [Active]
From stg.[Auct_NodeTreeType_Raw]
