create view "stg"."CC_ModelDifference_FinalView__dbt_tmp" as
    
Select
	[Version],[OptimisticLockField],[GcRecord],[OID],[UserID],[ConTextID] 
From [CC_ModelDifference_Incr]
