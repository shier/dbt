create view "stg"."Auct_NodeTreeType_FinalView__dbt_tmp" as
    
Select
	[NodeTreeTypeID],[Name],[Active] 
From stg.[Auct_NodeTreeType_Incr] 
Where [dbt_valid_to] is null
