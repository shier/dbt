{{ config(materialized='table',schema='dbo')}}
Select
	cast([ListingImageDefinitionPK] as int) [ListingImageDefinitionPK],
	cast([ShouldpopulateInitially] as bit) [ShouldpopulateInitially],
	cast([ImageWidth] as int) [ImageWidth],
	cast([ImageHeight] as int) [ImageHeight],
	cast([Quality] as int) [Quality],
	cast([ListingImageFieldName] as nvarchar(4000)) [ListingImageFieldName],
	cast([FileNamefragment] as nvarchar(4000)) [FileNamefragment] 
From stg.[CC_ListingImageDefinition_FinalView]