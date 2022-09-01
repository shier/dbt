{{ config(materialized='view',schema='stg')}}
Select
	[OID],[Parent],[Name],[OptimisticLockField],[GcRecord] 
From [CC_HCategory_Incr]