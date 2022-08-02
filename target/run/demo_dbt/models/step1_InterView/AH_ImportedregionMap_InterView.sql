create view "stg"."AH_ImportedregionMap_InterView__dbt_tmp" as
    
Select
	[localRegionId] [LocalregionID],
	[foreignRegionId] [ForeignregionID],
	[foreignRegionTier] [Foreignregiontier]
From stg.[AH_ImportedregionMap_Raw]
