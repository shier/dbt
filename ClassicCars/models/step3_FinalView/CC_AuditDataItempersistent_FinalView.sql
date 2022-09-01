{{ config(materialized='view',schema='stg')}}
Select
	[OptimisticLockField],[GcRecord],[ModifiedOn],[OID],[UserName],[OperationType],[Description],[AuditeDOBJect],[OlDOBJect],[NewoBJect],[Oldvalue],[Newvalue],[PropertyName] 
From [CC_AuditDataItempersistent_Incr]