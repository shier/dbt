{{ config(materialized='view',schema='stg')}}
Select
	[MultiMediaCategoryID],[Name],[Active] 
From stg.[Auct_MultiMediaCategory_Incr] 
Where [dbt_valid_to] is null