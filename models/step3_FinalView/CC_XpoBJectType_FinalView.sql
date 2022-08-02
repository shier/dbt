{{ config(materialized='view',schema='stg')}}
Select
	[OID],[TypeName],[AssemblyName] 
From stg.[CC_XpoBJectType_Incr] 
Where [dbt_valid_to] is null