create view "stg"."CC_EmailFilter_FinalView__dbt_tmp" as
    
Select
	[ID],[FilterCodeID],[CreateDate],[ModifyDate],[IsActive],[FilterType],[FilterValue] 
From stg.[CC_EmailFilter_Incr] 
Where [dbt_valid_to] is null
