
Select
	OptimisticLockField OptimisticLockField,
	cast(Roles as nvarchar(4000)) Roles,
	cast(Users as nvarchar(4000)) Users,
	cast(OID as nvarchar(4000)) OID
From CC_SecuritysystemRoleroles_Raw