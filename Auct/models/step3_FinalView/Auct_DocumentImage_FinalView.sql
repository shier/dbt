{{ config(materialized='view',schema='stg')}}
Select
	[DocumentImageID],[Active],[CustomerAccountID],[DocumentImageTypeID],[UncPath],[FullPath],[AuctionID],[Expiration],[Created],[CreatedByUserID],[Height],[Width] 
From stg.[Auct_DocumentImage_Incr] 
Where [dbt_valid_to] is null