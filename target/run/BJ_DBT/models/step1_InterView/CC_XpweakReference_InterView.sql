create view "stg"."CC_XpweakReference_InterView__dbt_tmp" as
    
Select
	cast([Oid] as nvarchar(4000)) [OID],
	cast([TargetKey] as nvarchar(4000)) [TargetKey],
	[TargetType] [TargetType],
	[OptimisticLockField] [OptimisticLockField],
	[GCRecord] [GcRecord],
	[ObjectType] [OBJectType]
From stg.[CC_XpweakReference_Raw]
