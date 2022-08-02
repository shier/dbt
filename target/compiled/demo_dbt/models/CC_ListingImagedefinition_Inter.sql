
Select
	cast(ListingImageFieldName as nvarchar(4000)) ListingImageFieldName,
	cast(FileNameFragment as nvarchar(4000)) FileNamefragment,
	ShouldPopulateInitially ShouldpopulateInitially,
	ListingImageDefinitionPK ListingImagedefinitionpk,
	ImageWidth ImageWidth,
	ImageHeight ImageHeight,
	Quality Quality
From CC_ListingImagedefinition_Raw