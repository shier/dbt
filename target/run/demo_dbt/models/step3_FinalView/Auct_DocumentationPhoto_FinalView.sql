create view "stg"."Auct_DocumentationPhoto_FinalView__dbt_tmp" as
    
Select
	[DocumentationPhotoID],[PhotoTypeID],[PhotoStatusID],[ItemID],[FileName],[UncPath],[PhotoSize],[Height],[Width],[Created],[UpdateEventID],[TbFileName],[TbPhotoSize],[TbUncPath],[TbHeight],[TbWidth],[FullPath],[TbfullPath],[WebSiteOrder],[ShowonWeb],[WebFileName],[WebUncPath],[RejectionReason],[IsMainAdvertising] 
From stg.[Auct_DocumentationPhoto_Incr] 
Where [dbt_valid_to] is null
