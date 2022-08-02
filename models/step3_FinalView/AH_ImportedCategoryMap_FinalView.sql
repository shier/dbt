{{ config(materialized='view',schema='stg')}}
Select
	[LocalCategoryID],[ForeignCategoryID] 
From stg.[AH_ImportedCategoryMap_Incr] 
Where [dbt_valid_to] is null