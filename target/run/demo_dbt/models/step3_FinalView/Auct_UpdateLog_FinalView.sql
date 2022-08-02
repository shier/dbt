create view "stg"."Auct_UpdateLog_FinalView__dbt_tmp" as
    
Select
	[UpdateLogID],[TableName],[KeyValue],[FieldName],[Oldvalue],[Newvalue],[UserName],[CreateDate],[TransactionID] 
From stg.[Auct_UpdateLog_Incr] 
Where [dbt_valid_to] is null
