
With hashData as (
		Select
			HASHBYTES('MD5', concat(Cast([Created] as varchar), Cast([ContactID] as varchar), Cast([CustomerAccountID] as varchar), Cast([UpdateEventID] as varchar), [EmailAddress], [Use], [EmailBlastOptin], [EmailBlastOptinPartners], [Active])) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_Emails_Inter]
	)
Select * From hashData

	where not exists 
	(
		select EmailID 
		from "DedicatedSQLpoolBJ"."stg"."Auct_Emails_Incr" compareData
		where hashData.EmailID=compareData.EmailID
	)
	or  exists 
	(
		Select EmailID, hashValue
		from "DedicatedSQLpoolBJ"."stg"."Auct_Emails_Incr" compareData
		where hashData.EmailID = compareData.EmailID and hashData.hashValue <> compareData.hashValue
	)
