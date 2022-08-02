{{ config(materialized='table',schema='dbo')}}
Select
	cast([UpdateLogID] as int) [UpdateLogID],
	cast([TableName] as nvarchar(4000)) [TableName],
	cast([KeyValue] as nvarchar(4000)) [KeyValue],
	cast([FieldName] as nvarchar(4000)) [FieldName],
	cast([Oldvalue] as nvarchar(4000)) [Oldvalue],
	cast([Newvalue] as nvarchar(4000)) [Newvalue],
	cast([UserName] as nvarchar(4000)) [UserName],
	cast([CreateDate] as datetime) [CreateDate],
	cast([TransactionID] as nvarchar(4000)) [TransactionID] 
From stg.[Auct_UpdateLog_FinalView]