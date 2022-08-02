
With hashData as (
		Select
			HASHBYTES('MD5', concat(Cast(Created as varchar), Cast(UpdateEventID as varchar), Cast(SourceContactID as varchar), Cast(SourceLegacyID as varchar), Cast(DestinationContactID as varchar), Cast(DestinationLegacyID as varchar), SourceName, UserName)) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_MergeLog_Inter]
	)
Select * From hashData
