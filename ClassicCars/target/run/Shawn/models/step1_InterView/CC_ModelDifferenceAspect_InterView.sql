create view "stg"."CC_ModelDifferenceAspect_InterView__dbt_tmp" as
    
Select
	cast([Oid] as nvarchar(4000)) [OID],
	cast([Name] as nvarchar(4000)) [Name],
	cast([Xml] as nvarchar(4000)) [Xml],
	cast([Owner] as nvarchar(4000)) [Owner],
	[OptimisticLockField] [OptimisticLockField],
	[GCRecord] [GcRecord]
From stg.[CC_ModelDifferenceAspect_Raw]
