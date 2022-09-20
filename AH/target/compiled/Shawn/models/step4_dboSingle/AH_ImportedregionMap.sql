
Select
	cast([LocalregionID] as int) [localRegionId],
	cast([ForeignregionID] as int) [foreignRegionId],
	cast([Foreignregiontier] as int) [foreignRegionTier] 
From stg.[AH_ImportedregionMap_FinalView]