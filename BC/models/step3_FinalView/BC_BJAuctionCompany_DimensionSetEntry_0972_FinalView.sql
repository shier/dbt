{{ config(materialized='view',schema='stg')}}
Select
	[systemId] as [$systemId] ,
	[systemCreatedAt] as [$systemCreatedAt] ,
	[systemModifiedAt] as [$systemModifiedAt] ,
	[DimensionSetID] ,
	[DimensionValueID] ,
	[GlobalDimensionNo] as [GlobalDimensionNo_] ,
	[timestamp] ,
	[DimensionCode] ,
	[DimensionValueCode] ,
	[systemCreatedBy] as [$systemCreatedBy] ,
	[systemModifiedBy] as [$systemModifiedBy] 
From stg.[BC_BJAuctionCompany_DimensionSetEntry_0972_Incr] 
Where [dbt_valid_to] is null