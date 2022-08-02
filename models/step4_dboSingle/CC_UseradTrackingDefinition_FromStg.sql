{{ config(materialized='table',schema='dbo')}}
Select
	cast([TrackingDefinition] as nvarchar(4000)) [TrackingDefinition],
	cast([DataTokenID] as nvarchar(4000)) [DataTokenID],
	cast([StartDateUTC] as datetime) [StartDateUTC],
	cast([EndDateUTC] as datetime) [EndDateUTC] 
From stg.[CC_UseradTrackingDefinition_FinalView]