create view "stg"."CC_HCategory_FinalView__dbt_tmp" as
    
Select
	[OID],[Parent],[Name],[OptimisticLockField],[GcRecord] 
From [CC_HCategory_Incr]
