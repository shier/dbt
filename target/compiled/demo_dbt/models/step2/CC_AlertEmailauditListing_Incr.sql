
With hashData as (
		Select
			HASHBYTES('MD5', concat(Cast(AlertEmailAuditFK as varchar), Cast(ListingID as varchar))) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[CC_AlertEmailauditListing_Inter]
	)
Select * From hashData

	where not exists 
	(
		select AlertEmailAuditListingPK 
		from "DedicatedSQLpoolBJ"."stg"."CC_AlertEmailauditListing_Incr" compareData
		where hashData.AlertEmailAuditListingPK=compareData.AlertEmailAuditListingPK
	)
	or  exists 
	(
		Select AlertEmailAuditListingPK, hashValue
		from "DedicatedSQLpoolBJ"."stg"."CC_AlertEmailauditListing_Incr" compareData
		where hashData.AlertEmailAuditListingPK = compareData.AlertEmailAuditListingPK and hashData.hashValue <> compareData.hashValue
	)
