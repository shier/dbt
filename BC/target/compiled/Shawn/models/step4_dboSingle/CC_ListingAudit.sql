
Select
	cast([AuditPK] as int) [AuditPK],
	cast([ListingFK] as int) [ListingFK],
	cast([AuditDateTimeUTC] as datetime) [AuditDateTimeUTC],
	cast([UserName] as nvarchar(4000)) [UserName],
	cast([DdlAction] as nvarchar(4000)) [DDLAction],
	cast([FieldName] as nvarchar(4000)) [FieldName],
	cast([Oldvalue] as nvarchar(4000)) [OldValue],
	cast([Newvalue] as nvarchar(4000)) [NewValue] 
From stg.[CC_ListingAudit_FinalView]