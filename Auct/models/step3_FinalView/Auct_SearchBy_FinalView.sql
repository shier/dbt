{{ config(materialized='view',schema='stg')}}
Select
	[SearchByID],[Active],[SearchForID],[Name],[DisplayOrder] 
From stg.[Auct_SearchBy_Incr] 
Where [dbt_valid_to] is null