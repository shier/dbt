{{ config(materialized='view',schema='stg')}}
Select
	[OID],[GUIDID],[DisplayName],[IntID] 
From [CC_AuditeDOBJectweakReference_Incr]