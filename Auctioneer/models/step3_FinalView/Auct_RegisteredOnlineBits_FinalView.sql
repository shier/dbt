{{ config(materialized='view',schema='stg')}}
Select
	[RegisteredOnlineBit],[Name] 
From stg.[Auct_RegisteredOnlineBits_Incr] 
Where [dbt_valid_to] is null