create view "stg"."CC_AuditDataItempersistent_FinalView__dbt_tmp" as
    
Select
	[OptimisticLockField],[GcRecord],[ModifiedOn],[OID],[UserName],[OperationType],[Description],[AuditeDOBJect],[OlDOBJect],[NewoBJect],[Oldvalue],[Newvalue],[PropertyName] 
From [CC_AuditDataItempersistent_Incr]
