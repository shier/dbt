create view "stg"."AH_ImportedCategoryMap_InterView__dbt_tmp" as
    
Select
	[localCategoryId] [LocalCategoryID],
	[foreignCategoryId] [ForeignCategoryID]
From stg.[AH_ImportedCategoryMap_Raw]
