
Select
	cast(Oid as nvarchar(4000)) OID,
	cast(TargetType as nvarchar(4000)) TargetType,
	cast(Owner as nvarchar(4000)) Owner,
	OptimisticLockField OptimisticLockField,
	GCRecord GcRecord,
	ObjectType OBJectType,
	AllowWrite Allowwrite,
	AllowCreate AllowCreate,
	AllowDelete AllowDelete,
	AllowNavigate AllowNavigate,
	AllowRead AllowRead
From CC_SecURItysystemTypeperMissionsoBJect_Raw