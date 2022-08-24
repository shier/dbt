{{ config(materialized='view',schema='stg')}}
Select
	[TypeName],[ConnectionString],[Environment] 
From stg.[Auct_ConnectionString_Incr] 
Where [dbt_valid_to] is null