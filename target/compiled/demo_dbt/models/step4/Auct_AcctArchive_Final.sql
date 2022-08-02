
Select
	[ArchiveID],[LotNumber],[FeeAmount],[PaymentAMT],[ContactID],[AuctionID],[DocumentType],[Created],[AcctType],[FeeName],[PaymentType],[SystemNote],[UserNote],[UserName],[Dept],[VContactID] 
From stg.[Auct_AcctArchive_Incr] 
Where [dbt_valid_to] is null