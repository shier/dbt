
With hashData as (
		Select
			HASHBYTES('MD5', concat(Cast(DateSentUTC as varchar), Cast(SavedSearchID as varchar), MandrillrejectReason, AlertFrequency, EmailAddress, MandrillID, MandrillStatus)) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[CC_AlertEmailaudit_Inter]
	)
Select * From hashData

	where not exists 
	(
		select AlertEmailAuditPK 
		from "DedicatedSQLpoolBJ"."stg"."CC_AlertEmailaudit_Incr" compareData
		where hashData.AlertEmailAuditPK=compareData.AlertEmailAuditPK
	)
	or  exists 
	(
		Select AlertEmailAuditPK, hashValue
		from "DedicatedSQLpoolBJ"."stg"."CC_AlertEmailaudit_Incr" compareData
		where hashData.AlertEmailAuditPK = compareData.AlertEmailAuditPK and hashData.hashValue <> compareData.hashValue
	)
