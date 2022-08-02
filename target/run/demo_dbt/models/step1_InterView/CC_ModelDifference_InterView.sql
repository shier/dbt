create view "stg"."CC_ModelDifference_InterView__dbt_tmp" as
    
Select
	[Version] [Version],
	[OptimisticLockField] [OptimisticLockField],
	[GCRecord] [GcRecord],
	cast([Oid] as nvarchar(4000)) [OID],
	cast([UserId] as nvarchar(4000)) [UserID],
	cast([ContextId] as nvarchar(4000)) [ConTextID]
From stg.[CC_ModelDifference_Raw]
