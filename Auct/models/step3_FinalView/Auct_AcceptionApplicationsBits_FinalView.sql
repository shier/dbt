{{ config(materialized='view',schema='stg')}}
Select
	[AcceptionApplicationsBit],[Name] 
From stg.[Auct_AcceptionApplicationsBits_Incr] 
Where [dbt_valid_to] is null