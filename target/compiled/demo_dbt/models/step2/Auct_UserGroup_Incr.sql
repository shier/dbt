
With hashData as (
		Select
			HASHBYTES('MD5', concat(Cast(Created as varchar), Cast(UpdateEventID as varchar), Cast(GroupOwner as varchar), Name, DistributionEmail)) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_UserGroup_Inter]
	)
Select * From hashData
