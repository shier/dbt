create view "stg"."CC_MakeModelTags_InterView__dbt_tmp" as
    
Select
	[MakeModelFK] [MakeModelFK],
	[TagFK] [TagFK]
From stg.[CC_MakeModelTags_Raw]
