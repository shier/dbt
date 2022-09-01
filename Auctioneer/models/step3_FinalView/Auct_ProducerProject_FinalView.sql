{{ config(materialized='view',schema='stg')}}
Select
	[ProducerProjectID],[Name],[DateCreated],[Active] 
From stg.[Auct_ProducerProject_Incr] 
Where [dbt_valid_to] is null