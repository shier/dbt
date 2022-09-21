
  
  if object_id ('"dbo"."Auct_DocumentationFiles__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_DocumentationFiles__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."Auct_DocumentationFiles__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."Auct_DocumentationFiles__dbt_tmp"
    end


   EXEC('create view dbo.Auct_DocumentationFiles__dbt_tmp_temp_view as
    
Select
	cast([LotNumber] as numeric(18,2)) [LOTNUMBER],
	cast([DocumentID] as int) [DOCUMENTID],
	cast([UncPath] as nvarchar(4000)) [UNCPATH],
	cast([AuctionID] as int) [AUCTIONID],
	cast([CapturedTime] as DATETIME) [CAPTUREDTIME],
	cast([Created] as DATETIME) [CREATED],
	cast([FileName] as nvarchar(4000)) [FILENAME],
	cast([ArchiveUncPath] as nvarchar(4000)) [ARCHIVEUNCPATH] 
From stg.[Auct_DocumentationFiles_FinalView]
    ');

  CREATE TABLE "dbo"."Auct_DocumentationFiles__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.Auct_DocumentationFiles__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."Auct_DocumentationFiles__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_DocumentationFiles__dbt_tmp_temp_view"
    end


