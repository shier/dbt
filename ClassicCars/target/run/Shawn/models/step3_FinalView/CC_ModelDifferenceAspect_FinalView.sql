create view "stg"."CC_ModelDifferenceAspect_FinalView__dbt_tmp" as
    
Select
	[OID],[Name],[Xml],[Owner],[OptimisticLockField],[GcRecord] 
From [CC_ModelDifferenceAspect_Incr]
