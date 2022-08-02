{{ config(materialized='table',schema='dbo')}}
Select
	cast([AuditPK] as int) [AuditPK],
	cast([ListingFK] as int) [ListingFK],
	cast([AuditDateTimeUTC] as datetime) [AuditDateTimeUTC],
	cast([UserName] as nvarchar(4000)) [UserName],
	cast([DdlAction] as nvarchar(4000)) [DdlAction],
	cast([FieldName] as nvarchar(4000)) [FieldName],
	cast([Oldvalue] as nvarchar(4000)) [Oldvalue],
	cast([Newvalue] as nvarchar(4000)) [Newvalue] 
From stg.[CC_ListingAudit_FinalView]