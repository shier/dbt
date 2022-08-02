{{ config(materialized='view',schema='stg')}}
Select
	[ReserveTypeID],[Name] 
From stg.[Auct_ReserveType_Incr] 
Where [dbt_valid_to] is null