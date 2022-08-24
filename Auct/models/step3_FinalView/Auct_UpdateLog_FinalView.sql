{{ config(materialized='view',schema='stg')}}
Select
	[UpdateLogID],[TableName],[KeyValue],[FieldName],[Oldvalue],[Newvalue],[UserName],[CreateDate],[TransactionID] 
From stg.[Auct_UpdateLog_Incr] 
Where [dbt_valid_to] is null