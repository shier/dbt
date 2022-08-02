
  
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
	cast(UNCPATH as nvarchar(4000)) UncPath,
	cast(FILENAME as nvarchar(4000)) FileName,
	cast(ARCHIVEUNCPATH as nvarchar(4000)) ArchiveUncPath,
	LOTNUMBER LotNumber,
	DOCUMENTID DocumentID,
	AUCTIONID AuctionID,
	CAPTUREDTIME CapturedTime,
	CREATED Created
From Auct_DocumentationFiles_Raw
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


