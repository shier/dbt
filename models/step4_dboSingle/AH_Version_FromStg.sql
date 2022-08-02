{{ config(materialized='table',schema='dbo')}}
Select
	cast([ID] as int) [ID],
	cast([VersionNumber] as nvarchar(4000)) [VersionNumber],
	cast([Status] as nvarchar(4000)) [Status],
	cast([DaTestamp] as datetime) [DaTestamp] 
From stg.[AH_Version_FinalView]