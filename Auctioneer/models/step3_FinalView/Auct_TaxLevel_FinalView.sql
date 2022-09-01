{{ config(materialized='view',schema='stg')}}
Select
	[TaxLevelID],[Name] 
From stg.[Auct_TaxLevel_Incr] 
Where [dbt_valid_to] is null