
With hashData as (
		Select
			HASHBYTES('MD5', concat(Cast(Active as varchar), Name, Description, WebSiteURL, LogoURL)) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_Charity_Inter]
	)
Select * From hashData
