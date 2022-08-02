create view "stg"."CC_CompanyType_FinalView__dbt_tmp" as
    
Select
	[ID],[Description] 
From stg.[CC_CompanyType_Incr] 
Where [dbt_valid_to] is null
