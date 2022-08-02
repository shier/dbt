
Select
	cast(ChildRoles as nvarchar(4000)) ChildRoles,
	cast(ParentRoles as nvarchar(4000)) ParentRoles,
	cast(OID as nvarchar(4000)) OID,
	OptimisticLockField OptimisticLockField
From CC_Securitysystemrolechildroles_Raw