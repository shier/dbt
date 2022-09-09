{{ config(materialized='view',schema='stg')}}
Select
	[SearchForID],[Active],[Name] 
From stg.[Auct_SearchFor_Incr] 
Where [dbt_valid_to] is null