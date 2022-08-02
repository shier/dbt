create view "stg"."CC_ListingImageDefinition_InterView__dbt_tmp" as
    
Select
	[ListingImageDefinitionPK] [ListingImageDefinitionPK],
	[ShouldPopulateInitially] [ShouldpopulateInitially],
	[ImageWidth] [ImageWidth],
	[ImageHeight] [ImageHeight],
	[Quality] [Quality],
	cast([ListingImageFieldName] as nvarchar(4000)) [ListingImageFieldName],
	cast([FileNameFragment] as nvarchar(4000)) [FileNamefragment]
From stg.[CC_ListingImageDefinition_Raw]
