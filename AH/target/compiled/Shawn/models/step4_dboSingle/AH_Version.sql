
Select
	cast([VersionNumber] as nvarchar(4000)) [VersionNumber],
	cast([Status] as nvarchar(4000)) [Status],
	cast([DaTestamp] as datetime) [DateStamp],
	cast([ID] as int) [ID] 
From stg.[AH_Version_FinalView]