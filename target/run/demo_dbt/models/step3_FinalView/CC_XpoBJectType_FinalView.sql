create view "stg"."CC_XpoBJectType_FinalView__dbt_tmp" as
    
Select
	[OID],[TypeName],[AssemblyName] 
From stg.[CC_XpoBJectType_Incr] 
Where [dbt_valid_to] is null
