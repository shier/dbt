
Select
	cast([DimensionCode] as nvarchar(4000)) [DimensionCode],
	cast([GlobalDimensionNo_] as int) [GlobalDimensionNo_],
	cast([DimensionSetID] as int) [DimensionSetID],
	cast([$systemCreatedAt] as datetime) [$systemCreatedAt],
	cast([$systemCreatedBy] as nvarchar(4000)) [$systemCreatedBy],
	cast([DimensionValueCode] as nvarchar(4000)) [DimensionValueCode],
	cast([timestamp] as varbinary(8000)) [timestamp],
	cast([DimensionValueID] as int) [DimensionValueID],
	cast([$systemModifiedAt] as datetime) [$systemModifiedAt],
	cast([$systemId] as nvarchar(4000)) [$systemId],
	cast([$systemModifiedBy] as nvarchar(4000)) [$systemModifiedBy] 
From stg.[BC_BJAuctionCompany_DimensionSetEntry_0972_FinalView]