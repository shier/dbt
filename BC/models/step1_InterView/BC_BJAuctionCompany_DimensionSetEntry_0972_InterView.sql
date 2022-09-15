{{ config(materialized='view',schema='stg')}}
Select
	cast([$systemId] as nvarchar(4000)) [systemId],
	[$systemCreatedAt] as [systemCreatedAt],
	[$systemModifiedAt] as [systemModifiedAt],
	[DimensionSetID] ,
	[DimensionValueID] ,
	[GlobalDimensionNo_] as [GlobalDimensionNo],
	cast([timestamp] as nvarchar(4000)) [timestamp],
	cast([DimensionCode] as nvarchar(4000)) [DimensionCode],
	cast([DimensionValueCode] as nvarchar(4000)) [DimensionValueCode],
	cast([$systemCreatedBy] as nvarchar(4000)) [systemCreatedBy],
	cast([$systemModifiedBy] as nvarchar(4000)) [systemModifiedBy]
From stg.[BC_BJAuctionCompany_DimensionSetEntry_0972_Raw]
