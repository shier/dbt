
With hashData as (
		Select
			HASHBYTES('MD5', concat(Cast(CustomerAccountID as varchar), Cast(SponsorStatusID as varchar), Cast(SponsorLeadID as varchar), Cast(UpdateEventID as varchar), Cast(AddressID as varchar), Cast(TermStart as varchar), Cast(TermEnd as varchar), Cast(Created as varchar))) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_Sponsor_Inter]
	)
Select * From hashData
