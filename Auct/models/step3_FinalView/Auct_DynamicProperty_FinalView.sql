{{ config(materialized='view',schema='stg')}}
Select
	[DynamicPropertyID],[Name],[DisplayName],[DataClass] 
From stg.[Auct_DynamicProperty_Incr] 
Where [dbt_valid_to] is null