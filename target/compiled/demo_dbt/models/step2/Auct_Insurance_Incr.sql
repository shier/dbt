
With hashData as (
		Select
			HASHBYTES('MD5', concat(Cast(PhoneID as varchar), Cast(CustomerAccountID as varchar), Cast(ExpirationDate as varchar), CompanyName, PolicyNumber, AgentName)) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_Insurance_Inter]
	)
Select * From hashData
