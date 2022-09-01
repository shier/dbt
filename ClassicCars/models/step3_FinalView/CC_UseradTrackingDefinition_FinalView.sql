{{ config(materialized='view',schema='stg')}}
Select
	[TrackingDefinition],[DataTokenID],[StartDateUTC],[EndDateUTC] 
From [CC_UseradTrackingDefinition_Incr]