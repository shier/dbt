create view "stg"."CC_UseradTrackingDefinition_InterView__dbt_tmp" as
    
Select
	cast([TrackingDefinition] as nvarchar(4000)) [TrackingDefinition],
	cast([DataTokenId] as nvarchar(4000)) [DataTokenID],
	[StartDateUTC] [StartDateUTC],
	[EndDateUTC] [EndDateUTC]
From stg.[CC_UseradTrackingDefinition_Raw]
