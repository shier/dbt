{{ config(materialized='table',schema='dbo')}}
Select
	cast([ShouldpopulateInitially] as bit) [ShouldPopulateInitially],
	cast([ListingImageDefinitionPK] as int) [ListingImageDefinitionPK],
	cast([ImageWidth] as int) [ImageWidth],
	cast([ImageHeight] as int) [ImageHeight],
	cast([Quality] as int) [Quality],
	cast([ListingImageFieldName] as nvarchar(4000)) [ListingImageFieldName],
	cast([FileNamefragment] as nvarchar(4000)) [FileNameFragment] 
From stg.[CC_ListingImageDefinition_FinalView]