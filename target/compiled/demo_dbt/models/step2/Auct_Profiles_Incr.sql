
With hashData as (
		Select
			HASHBYTES('MD5', concat(Cast(IsAuthenticated as varchar), Cast(LastActivityDate as varchar), Cast(LastUpdateddate as varchar), UserName, ApplicationName, IsAnonymous)) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_Profiles_Inter]
	)
Select * From hashData
