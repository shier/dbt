
Select
	[DocumentID],[UncPath],[FileName],[ArchiveUncPath],[LotNumber],[AuctionID],[CapturedTime],[Created] 
From stg.[Auct_DocumentationFiles_Incr] 
Where [dbt_valid_to] is null