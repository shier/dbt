
Select
	ChangePasswordOnFirstLogon ChangePasswordonFirstLogon,
	IsActive IsActive,
	OptimisticLockField OptimisticLockField,
	GCRecord GcRecord,
	ObjectType OBJectType,
	cast(Oid as nvarchar(4000)) OID,
	cast(StoredPassword as nvarchar(4000)) StoredPassword,
	cast(UserName as nvarchar(4000)) UserName
From CC_SecURItysystemUser_Raw