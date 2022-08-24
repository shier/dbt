{{ config(materialized='view',schema='stg')}}
Select
	[TaskCategoryID],[Active],[Name] 
From stg.[Auct_TaskCategories_Incr] 
Where [dbt_valid_to] is null