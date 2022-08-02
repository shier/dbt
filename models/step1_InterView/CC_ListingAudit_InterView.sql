{{ config(materialized='view',schema='stg')}}
Select
	[AuditPK] [AuditPK],
	[ListingFK] [ListingFK],
	[AuditDateTimeUTC] [AuditDateTimeUTC],
	cast([UserName] as nvarchar(4000)) [UserName],
	cast([DDLAction] as nvarchar(4000)) [DdlAction],
	cast([FieldName] as nvarchar(4000)) [FieldName],
	cast([OldValue] as nvarchar(4000)) [Oldvalue],
	cast([NewValue] as nvarchar(4000)) [Newvalue]
From stg.[CC_ListingAudit_Raw]
