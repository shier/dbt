
Select
	[ID],[CreateDate],[ModifyDate],[IsActive],[BadMake],[BadModel],[GoodMake],[GoodModel],[GoodTrim] 
From stg.[CC_MakeModelcorrection_Incr] 
Where [dbt_valid_to] is null