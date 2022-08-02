create view "stg"."AH_Version_InterView__dbt_tmp" as
    
Select
	[ID] [ID],
	cast([VersionNumber] as nvarchar(4000)) [VersionNumber],
	cast([Status] as nvarchar(4000)) [Status],
	[DateStamp] [DaTestamp]
From stg.[AH_Version_Raw]
