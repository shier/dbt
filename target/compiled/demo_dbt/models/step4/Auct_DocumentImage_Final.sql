
Select
	[DocumentImageID],[UncPath],[FullPath],[Expiration],[Created],[Active],[CustomerAccountID],[DocumentImageTypeID],[AuctionID],[CreatedByUserID],[Height],[Width] 
From stg.[Auct_DocumentImage_Incr] 
Where [dbt_valid_to] is null