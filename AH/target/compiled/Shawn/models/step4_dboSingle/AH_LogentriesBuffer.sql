
Select
	cast([Message] as nvarchar(4000)) [Message],
	cast([Properties] as nvarchar(4000)) [Properties],
	cast([MachineName] as nvarchar(4000)) [MachineName],
	cast([Title] as nvarchar(4000)) [Title],
	cast([FunctionalArea] as nvarchar(4000)) [FunctionalArea],
	cast([Severity] as nvarchar(4000)) [Severity],
	cast([Actor] as nvarchar(4000)) [Actor],
	cast([ExceptionClass] as nvarchar(4000)) [ExceptionClass],
	cast([Stacktrace] as nvarchar(4000)) [Stacktrace],
	cast([SqlDaTestamp] as datetime) [SqlDaTestamp],
	cast([EntryDaTestamp] as datetime) [EntryDaTestamp],
	cast([ID] as int) [ID],
	cast([Priority] as int) [Priority],
	cast([EventID] as int) [EventID] 
From stg.[AH_LogentriesBuffer_FinalView]