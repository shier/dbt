
  
  if object_id ('"dbo"."Auct_PhotoDirectory__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_PhotoDirectory__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."Auct_PhotoDirectory__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."Auct_PhotoDirectory__dbt_tmp"
    end


   EXEC('create view dbo.Auct_PhotoDirectory__dbt_tmp_temp_view as
    
Select
	cast([PhotoDirectoryID] as int) [PHOTODIRECTORYID],
	cast([UncPath] as nvarchar(4000)) [UNCPATH],
	cast([TypeName] as nvarchar(4000)) [TYPENAME],
	cast([Active] as int) [ACTIVE],
	cast([DirectoryTypeID] as int) [DIRECTORYTYPEID],
	cast([AuctionID] as int) [AUCTIONID],
	cast([IsCDN] as int) [ISCDN] 
From stg.[Auct_PhotoDirectory_FinalView]
    ');

  CREATE TABLE "dbo"."Auct_PhotoDirectory__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.Auct_PhotoDirectory__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."Auct_PhotoDirectory__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_PhotoDirectory__dbt_tmp_temp_view"
    end


