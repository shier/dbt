
With hashData as (
		Select
			HASHBYTES('MD5', concat(Cast(Created as varchar), Cast(CustomerAccountID as varchar), Cast(CompanyID as varchar), Cast(UpdateEventID as varchar), Cast(DealerID as varchar), Cast(CompanyContactTypeID as varchar))) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_ContactCompany_Inter]
	)
Select * From hashData
