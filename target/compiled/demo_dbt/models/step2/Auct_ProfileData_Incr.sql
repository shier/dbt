
With hashData as (
		Select
			HASHBYTES('MD5', concat(WizardColor, TextColor, WizardText, BidderPhoto, UserTimeOut, CustListall, BgColor, CustsumDisplay, CustContact, Cast(DefaultAuctionID as varchar), Cast(PulseQueueID as varchar))) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_ProfileData_Inter]
	)
Select * From hashData
