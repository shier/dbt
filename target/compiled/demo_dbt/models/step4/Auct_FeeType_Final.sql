
Select
	[FeeTypeID],[DefaultAmount],[DefaultPercentage],[ShowonWeb],[Created],[WebStartDate],[WebEndDate],[TaxRateID],[AuctionID],[ProcessorID],[UseMultiplier],[ApplicationReportID],[OnlineApplicationReportID],[FeeCategoryID],[FeePayerID],[UpdateEventID],[Name],[InActive],[ExpirationMessage],[FeeTypeGUID],[DocumentID],[BCProcessFor],[BCdocumentType],[DebitProcessor],[CreditProcessor],[PaymentProcessor],[RefundProcessor],[Amenities],[SectionTitle] 
From stg.[Auct_FeeType_Incr] 
Where [dbt_valid_to] is null