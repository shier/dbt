
With hashData as (
		Select
			HASHBYTES('SHA2_256', concat([OID], [GUIDID], [DisplayName], Cast([IntID] as varchar))) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[CC_AuditeDOBJectweakReference_InterView]
	)
Select * From hashData

	where not exists 
	(
		select hashValue 
		from "BJAC_DW_PROD"."stg"."CC_AuditeDOBJectweakReference_Incr" compareData
		where hashData.hashValue=compareData.hashValue
	)
