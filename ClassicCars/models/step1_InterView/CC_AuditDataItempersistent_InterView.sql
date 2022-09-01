{{ config(materialized='view',schema='stg')}}
Select
	[OptimisticLockField] [OptimisticLockField],
	[GCRecord] [GcRecord],
	[ModifiedOn] [ModifiedOn],
	cast([Oid] as nvarchar(4000)) [OID],
	cast([UserName] as nvarchar(4000)) [UserName],
	cast([OperationType] as nvarchar(4000)) [OperationType],
	cast([Description] as nvarchar(4000)) [Description],
	cast([AuditedObject] as nvarchar(4000)) [AuditeDOBJect],
	cast([OldObject] as nvarchar(4000)) [OlDOBJect],
	cast([NewObject] as nvarchar(4000)) [NewoBJect],
	cast([OldValue] as nvarchar(4000)) [Oldvalue],
	cast([NewValue] as nvarchar(4000)) [Newvalue],
	cast([PropertyName] as nvarchar(4000)) [PropertyName]
From stg.[CC_AuditDataItempersistent_Raw]
