{{ config(materialized='view',schema='stg')}}
Select
	[TaskID],[Active],[TaskCategoryID],[TaskCategoryLinkID],[TaskCategoryLinkGUID] 
From stg.[Auct_Tasks_Incr] 
Where [dbt_valid_to] is null