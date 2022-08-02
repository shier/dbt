
Select
	cast(NewValue as nvarchar(4000)) Newvalue,
	cast(UserName as nvarchar(4000)) UserName,
	cast(DDLAction as nvarchar(4000)) DdlAction,
	cast(FieldName as nvarchar(4000)) FieldName,
	cast(OldValue as nvarchar(4000)) Oldvalue,
	AuditPK Auditpk,
	ListingFK Listingfk,
	AuditDateTimeUTC AuditDateTimeUTC
From CC_Listingaudit_Raw