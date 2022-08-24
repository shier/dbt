{{ config(materialized='view',schema='stg')}}
Select
	[MaptoID],[Name] 
From stg.[Auct_Mapper_Country_Incr] 
Where [dbt_valid_to] is null