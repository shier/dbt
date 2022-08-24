{{ config(materialized='view',schema='stg')}}
Select
	[DocumentID],[LotNumber],[UncPath],[AuctionID],[CapturedTime],[Created],[FileName],[ArchiveUncPath] 
From stg.[Auct_DocumentationFiles_Incr] 
Where [dbt_valid_to] is null