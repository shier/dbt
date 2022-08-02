create view "stg"."CC_NewsLetter_FinalView__dbt_tmp" as
    
Select
	[ID],[IsActive],[Email],[CreateDate],[ModifyDate] 
From stg.[CC_NewsLetter_Incr] 
Where [dbt_valid_to] is null
