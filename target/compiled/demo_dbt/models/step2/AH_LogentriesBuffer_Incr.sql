
With hashData as (
		Select
			HASHBYTES('MD5', concat(Message, Title, FunctionalArea, Severity, Actor, ExceptionClass, Stacktrace, Properties, MachineName, Cast(SqlDaTestamp as varchar), Cast(EntryDaTestamp as varchar), Cast(Priority as varchar), Cast(EventID as varchar))) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[AH_LogentriesBuffer_Inter]
	)
Select * From hashData
