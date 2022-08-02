{{ config(materialized='table',schema='dbo')}}
Select
	cast([OptimisticLockField] as int) [OptimisticLockField],
	cast([GcRecord] as int) [GcRecord],
	cast([ModifiedOn] as datetime) [ModifiedOn],
	cast([OID] as nvarchar(4000)) [OID],
	cast([UserName] as nvarchar(4000)) [UserName],
	cast([OperationType] as nvarchar(4000)) [OperationType],
	cast([Description] as nvarchar(4000)) [Description],
	cast([AuditeDOBJect] as nvarchar(4000)) [AuditeDOBJect],
	cast([OlDOBJect] as nvarchar(4000)) [OlDOBJect],
	cast([NewoBJect] as nvarchar(4000)) [NewoBJect],
	cast([Oldvalue] as nvarchar(4000)) [Oldvalue],
	cast([Newvalue] as nvarchar(4000)) [Newvalue],
	cast([PropertyName] as nvarchar(4000)) [PropertyName] 
From stg.[CC_AuditDataItempersistent_FinalView]