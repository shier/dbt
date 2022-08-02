{{ config(materialized='view',schema='stg')}}
Select
	[ID] [ID],
	cast([VersionNumber] as nvarchar(4000)) [VersionNumber],
	cast([Status] as nvarchar(4000)) [Status],
	[DateStamp] [DaTestamp]
From stg.[AH_Version_Raw]
