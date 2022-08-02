
With hashData as (
		Select
			HASHBYTES('MD5', concat(Cast(DefaultAmount as varchar), Cast(DefaultPercentage as varchar), Cast(ShowonWeb as varchar), Cast(Created as varchar), Cast(WebStartDate as varchar), Cast(WebEndDate as varchar), Cast(TaxRateID as varchar), Cast(AuctionID as varchar), Cast(ProcessorID as varchar), Cast(UseMultiplier as varchar), Cast(ApplicationReportID as varchar), Cast(OnlineApplicationReportID as varchar), Cast(FeeCategoryID as varchar), Cast(FeePayerID as varchar), Cast(UpdateEventID as varchar), Name, InActive, ExpirationMessage, FeeTypeGUID, DocumentID, BCProcessFor, BCdocumentType, DebitProcessor, CreditProcessor, PaymentProcessor, RefundProcessor, Amenities, SectionTitle)) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_FeeType_Inter]
	)
Select * From hashData
