
  
  if object_id ('"dbo"."Auct_DocumentationPhoto__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_DocumentationPhoto__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."Auct_DocumentationPhoto__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."Auct_DocumentationPhoto__dbt_tmp"
    end


   EXEC('create view dbo.Auct_DocumentationPhoto__dbt_tmp_temp_view as
    
Select
	cast([DocumentationPhotoID] as int) [DOCUMENTATIONPHOTOID],
	cast([PhotoTypeID] as int) [PHOTOTYPEID],
	cast([PhotoStatusID] as int) [PHOTOSTATUSID],
	cast([ItemID] as int) [ITEMID],
	cast([FileName] as nvarchar(4000)) [FILENAME],
	cast([UncPath] as nvarchar(4000)) [UNCPATH],
	cast([PhotoSize] as int) [PHOTOSIZE],
	cast([Height] as int) [HEIGHT],
	cast([Width] as int) [WIDTH],
	cast([Created] as DATETIME) [CREATED],
	cast([UpdateEventID] as int) [UPDATEEVENTID],
	cast([TbFileName] as nvarchar(4000)) [TBFILENAME],
	cast([TbPhotoSize] as int) [TBPHOTOSIZE],
	cast([TbUncPath] as nvarchar(4000)) [TBUNCPATH],
	cast([TbHeight] as int) [TBHEIGHT],
	cast([TbWidth] as int) [TBWIDTH],
	cast([FullPath] as nvarchar(4000)) [FULLPATH],
	cast([TbfullPath] as nvarchar(4000)) [TBFULLPATH],
	cast([WebSiteOrder] as int) [WEBSITEORDER],
	cast([ShowonWeb] as int) [SHOWONWEB],
	cast([WebFileName] as nvarchar(4000)) [WEBFILENAME],
	cast([WebUncPath] as nvarchar(4000)) [WEBUNCPATH],
	cast([RejectionReason] as nvarchar(4000)) [REJECTIONREASON],
	cast([IsMainAdvertising] as int) [ISMAINADVERTISING] 
From stg.[Auct_DocumentationPhoto_FinalView]
    ');

  CREATE TABLE "dbo"."Auct_DocumentationPhoto__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.Auct_DocumentationPhoto__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."Auct_DocumentationPhoto__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_DocumentationPhoto__dbt_tmp_temp_view"
    end


