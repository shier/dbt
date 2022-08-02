create view "stg"."CC_MakeModelCorrection_FinalView__dbt_tmp" as
    
Select
	[ID],[CreateDate],[ModifyDate],[BadMake],[BadModel],[GoodMake],[GoodModel],[GoodTrim],[IsActive] 
From stg.[CC_MakeModelCorrection_Incr] 
Where [dbt_valid_to] is null
