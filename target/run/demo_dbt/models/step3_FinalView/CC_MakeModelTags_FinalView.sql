create view "stg"."CC_MakeModelTags_FinalView__dbt_tmp" as
    
Select
	[MakeModelFK],[TagFK] 
From [CC_MakeModelTags_Incr]
