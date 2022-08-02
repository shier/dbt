
  
  if object_id ('"stg"."Auct_DocumentationFiles_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_DocumentationFiles_Inter__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_DocumentationFiles_Inter__dbt_tmp"','U') is not null
    begin
    drop table "stg"."Auct_DocumentationFiles_Inter__dbt_tmp"
    end


   EXEC('create view stg.Auct_DocumentationFiles_Inter__dbt_tmp_temp_view as
    
Select
	[DOCUMENTID] [DocumentID],
	[LOTNUMBER] [LotNumber],
	cast([UNCPATH] as nvarchar(4000)) [UncPath],
	[AUCTIONID] [AuctionID],
	[CAPTUREDTIME] [CapturedTime],
	[CREATED] [Created],
	cast([FILENAME] as nvarchar(4000)) [FileName],
	cast([ARCHIVEUNCPATH] as nvarchar(4000)) [ArchiveUncPath]
From stg.[Auct_DocumentationFiles_Raw]
    ');

  CREATE TABLE "stg"."Auct_DocumentationFiles_Inter__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_DocumentationFiles_Inter__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."Auct_DocumentationFiles_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_DocumentationFiles_Inter__dbt_tmp_temp_view"
    end


