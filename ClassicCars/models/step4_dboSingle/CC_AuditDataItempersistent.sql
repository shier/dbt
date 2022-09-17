{{ config(materialized='table',schema='dbo')}}
Select
	cast([OptimisticLockField] as int) [OptimisticLockField],
	cast([GcRecord] as int) [GCRecord],
	cast([ModifiedOn] as datetime) [ModifiedOn],
	cast([OID] as nvarchar(4000)) [Oid],
	cast([UserName] as nvarchar(4000)) [UserName],
	cast([OperationType] as nvarchar(4000)) [OperationType],
	cast([Description] as nvarchar(4000)) [Description],
	cast([AuditeDOBJect] as nvarchar(4000)) [AuditedObject],
	cast([OlDOBJect] as nvarchar(4000)) [OldObject],
	cast([NewoBJect] as nvarchar(4000)) [NewObject],
	cast([Oldvalue] as nvarchar(4000)) [OldValue],
	cast([Newvalue] as nvarchar(4000)) [NewValue],
	cast([PropertyName] as nvarchar(4000)) [PropertyName] 
From stg.[CC_AuditDataItempersistent_FinalView]