
With hashData as (
		Select
			HASHBYTES('MD5', concat(Cast(Created as varchar), Cast(CustomerAccountID as varchar), Cast(AuctionID as varchar), Cast(UpdateEventID as varchar), InsurancePhone, InsuranceFax, Comments, Waivers, Damage, WorkersComp, Policy, InsuranceCompany, InsuranceContact, GeneralLiability, Additionalinsured, CorrectLimits, AuctionDates, AutoInsurance)) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_CoiInfo_Inter]
	)
Select * From hashData
