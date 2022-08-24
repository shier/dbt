{{ config(materialized='view',schema='stg')}}
Select
	[ArchiveID],[PaymentAMT],[LotNumber],[FeeAmount],[ContactID],[AuctionID],[AcctType],[FeeName],[PaymentType],[SystemNote],[UserNote],[Created],[UserName],[Dept],[DocumentType],[VContactID] 
From stg.[Auct_AcctArchive_Incr] 
Where [dbt_valid_to] is null