{{ config(materialized='view',schema='stg')}}
Select
	[GlCategoryID],[Name],[Created] 
From stg.[Auct_GlCategory_Incr] 
Where [dbt_valid_to] is null