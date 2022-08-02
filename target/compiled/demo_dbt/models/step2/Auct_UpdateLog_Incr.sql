
With hashData as (
		Select
			HASHBYTES('MD5', concat(Cast(CreateDate as varchar), TableName, KeyValue, FieldName, Oldvalue, Newvalue, UserName, TransactionID)) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_UpdateLog_Inter]
	)
Select * From hashData
