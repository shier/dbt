{{ config(materialized='table',schema='dbo')}}
Select
	cast([EventTypeID] as int) [EventTypeID],
	cast([Name] as nvarchar(4000)) [Name],
	cast([ImageURL] as nvarchar(4000)) [ImageURL],
	cast([CanHaveChildren] as int) [CanHaveChildren],
	cast([ClassName] as nvarchar(4000)) [ClassName],
	cast([Description] as nvarchar(4000)) [Description],
	cast([DeActiveImageURL] as nvarchar(4000)) [DeActiveImageURL] 
From stg.[Auct_EventType_FinalView]