
Select
	OptimisticLockField OptimisticLockField,
	GCRecord GcRecord,
	cast(Oid as nvarchar(4000)) OID,
	cast(Parent as nvarchar(4000)) Parent,
	cast(Name as nvarchar(4000)) Name
From CC_HCategory_Raw