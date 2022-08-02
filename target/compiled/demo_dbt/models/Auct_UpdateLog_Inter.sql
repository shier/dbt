
Select
	CreateDate CreateDate,
	UpdateLogId UpdateLogID,
	cast(TableName as nvarchar(4000)) TableName,
	cast(KeyValue as nvarchar(4000)) KeyValue,
	cast(FieldName as nvarchar(4000)) FieldName,
	cast(OldValue as nvarchar(4000)) Oldvalue,
	cast(NewValue as nvarchar(4000)) Newvalue,
	cast(UserName as nvarchar(4000)) UserName,
	cast(TransactionID as nvarchar(4000)) TransactionID
From Auct_UpdateLog_Raw