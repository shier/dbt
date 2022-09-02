{{ config(materialized='view',schema='stg')}}
Select
	[localCategoryId] [LocalCategoryID],
	[foreignCategoryId] [ForeignCategoryID]
From stg.[AH_ImportedCategoryMap_Raw]
