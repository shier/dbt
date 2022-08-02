{{ config(materialized='table',schema='dbo')}}
Select
	cast([LocalregionID] as int) [LocalregionID],
	cast([ForeignregionID] as int) [ForeignregionID],
	cast([Foreignregiontier] as int) [Foreignregiontier] 
From stg.[AH_ImportedregionMap_FinalView]