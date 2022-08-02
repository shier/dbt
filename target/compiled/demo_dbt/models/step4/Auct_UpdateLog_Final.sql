
Select
	[UpdateLogID],[CreateDate],[TableName],[KeyValue],[FieldName],[Oldvalue],[Newvalue],[UserName],[TransactionID] 
From stg.[Auct_UpdateLog_Incr] 
Where [dbt_valid_to] is null