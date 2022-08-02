{{ config(materialized='view',schema='stg')}}
Select
	[localRegionId] [LocalregionID],
	[foreignRegionId] [ForeignregionID],
	[foreignRegionTier] [Foreignregiontier]
From stg.[AH_ImportedregionMap_Raw]
