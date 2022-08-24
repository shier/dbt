create view "dbo_stg"."Auct_NodeTreeType_InterView__dbt_tmp" as
    
Select
	[NODETREETYPEID] [NodeTreeTypeID],
	cast([NAME] as nvarchar(4000)) [Name],
	[ACTIVE] [Active]
From stg.[Auct_NodeTreeType_Raw]
