
With hashData as (
		Select
			HASHBYTES('MD5', concat(Cast(Priority as varchar), Cast(EventID as varchar), Cast(SqlDaTestamp as varchar), Cast(EntryDaTestamp as varchar), Title, FunctionalArea, Severity, Actor, ExceptionClass, Stacktrace, Message, Properties, MachineName)) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[AH_Logentries_Inter]
	)
Select * From hashData
