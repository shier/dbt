{{ config(materialized='view',schema='stg')}}
Select
	[Version],[OptimisticLockField],[GcRecord],[OID],[UserID],[ConTextID] 
From [CC_ModelDifference_Incr] 
Where [dbt_valid_to] is null