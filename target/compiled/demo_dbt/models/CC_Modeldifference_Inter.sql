
Select
	Version Version,
	OptimisticLockField OptimisticLockField,
	GCRecord GcRecord,
	cast(Oid as nvarchar(4000)) OID,
	cast(UserId as nvarchar(4000)) UserID,
	cast(ContextId as nvarchar(4000)) ConTextID
From CC_Modeldifference_Raw