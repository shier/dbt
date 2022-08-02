{{ config(materialized='view',schema='stg')}}
Select
	[OID],[Name],[Xml],[Owner],[OptimisticLockField],[GcRecord] 
From [CC_ModelDifferenceAspect_Incr]