create view "stg"."Auct_FeeType_FinalView__dbt_tmp" as
    
Select
	[FeeTypeID],[ShowonWeb],[DefaultAmount],[DefaultPercentage],[Name],[FeeCategoryID],[FeePayerID],[Created],[UpdateEventID],[TaxRateID],[AuctionID],[InActive],[ProcessorID],[UseMultiplier],[DebitProcessor],[CreditProcessor],[PaymentProcessor],[RefundProcessor],[WebStartDate],[WebEndDate],[Amenities],[SectionTitle],[ExpirationMessage],[FeeTypeGUID],[ApplicationReportID],[OnlineApplicationReportID],[DocumentID],[BCProcessFor],[BCdocumentType] 
From stg.[Auct_FeeType_Incr] 
Where [dbt_valid_to] is null
