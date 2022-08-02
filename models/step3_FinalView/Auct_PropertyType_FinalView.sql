{{ config(materialized='view',schema='stg')}}
Select
	[PropertyTypeID],[Name],[Key],[Active] 
From stg.[Auct_PropertyType_Incr] 
Where [dbt_valid_to] is null