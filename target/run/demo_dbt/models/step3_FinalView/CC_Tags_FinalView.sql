create view "stg"."CC_Tags_FinalView__dbt_tmp" as
    
Select
	[TagPK],[TagName],[Slug] 
From stg.[CC_Tags_Incr] 
Where [dbt_valid_to] is null
