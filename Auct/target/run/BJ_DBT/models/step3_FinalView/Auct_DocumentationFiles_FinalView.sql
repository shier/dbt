create view "stg"."Auct_DocumentationFiles_FinalView__dbt_tmp" as
    
Select
	[DocumentID],[LotNumber],[UncPath],[AuctionID],[CapturedTime],[Created],[FileName],[ArchiveUncPath] 
From stg.[Auct_DocumentationFiles_Incr] 
Where [dbt_valid_to] is null
