{{ config(materialized='table',schema='dbo')}}
Select
	cast([LocalCategoryID] as int) [LocalCategoryID],
	cast([ForeignCategoryID] as int) [ForeignCategoryID] 
From stg.[AH_ImportedCategoryMap_FinalView]