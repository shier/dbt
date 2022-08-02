create view "stg"."CC_UseradTrackingDefinition_FinalView__dbt_tmp" as
    
Select
	[TrackingDefinition],[DataTokenID],[StartDateUTC],[EndDateUTC] 
From [CC_UseradTrackingDefinition_Incr]
