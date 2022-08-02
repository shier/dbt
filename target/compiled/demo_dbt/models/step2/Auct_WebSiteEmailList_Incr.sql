
With hashData as (
		Select
			HASHBYTES('MD5', concat(First_Name, Last_Name, Email_Type)) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_WebSiteEmailList_Inter]
	)
Select * From hashData
