
Select
	cast(Message as nvarchar(4000)) Message,
	cast(Title as nvarchar(4000)) Title,
	cast(FunctionalArea as nvarchar(4000)) FunctionalArea,
	cast(Severity as nvarchar(4000)) Severity,
	cast(Actor as nvarchar(4000)) Actor,
	cast(ExceptionClass as nvarchar(4000)) ExceptionClass,
	cast(StackTrace as nvarchar(4000)) Stacktrace,
	cast(Properties as nvarchar(4000)) Properties,
	cast(MachineName as nvarchar(4000)) MachineName,
	SQLDateStamp SqlDaTestamp,
	EntryDateStamp EntryDaTestamp,
	Id ID,
	Priority Priority,
	EventID EventID
From AH_LogentriesBuffer_Raw