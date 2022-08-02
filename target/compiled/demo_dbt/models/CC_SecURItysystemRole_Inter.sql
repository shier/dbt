
Select
	cast(Name as nvarchar(4000)) Name,
	IsAdministrative Isadministrative,
	CanEditModel CaneditModel,
	OptimisticLockField OptimisticLockField,
	GCRecord GcRecord,
	ObjectType OBJectType,
	cast(Oid as nvarchar(4000)) OID
From CC_SecURItysystemRole_Raw