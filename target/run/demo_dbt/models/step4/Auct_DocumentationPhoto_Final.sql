
  
  if object_id ('"stg"."Auct_DocumentationPhoto_Final__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_DocumentationPhoto_Final__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_DocumentationPhoto_Final__dbt_tmp"','U') is not null
    begin
    drop table "stg"."Auct_DocumentationPhoto_Final__dbt_tmp"
    end


   EXEC('create view stg.Auct_DocumentationPhoto_Final__dbt_tmp_temp_view as
    
Select
	[DocumentationPhotoID],[Created],[ItemID],[PhotoSize],[Height],[Width],[UpdateEventID],[TbPhotoSize],[PhotoTypeID],[PhotoStatusID],[TbHeight],[TbWidth],[WebSiteOrder],[ShowonWeb],[IsMainAdvertising],[RejectionReason],[FileName],[UncPath],[TbFileName],[TbUncPath],[FullPath],[TbfullPath],[WebFileName],[WebUncPath] 
From stg.[Auct_DocumentationPhoto_Incr] 
Where [dbt_valid_to] is null
    ');

  CREATE TABLE "stg"."Auct_DocumentationPhoto_Final__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_DocumentationPhoto_Final__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."Auct_DocumentationPhoto_Final__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_DocumentationPhoto_Final__dbt_tmp_temp_view"
    end


