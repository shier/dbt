
  
  if object_id ('"dbo"."Auct_PhotoDirectory_FromStg__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_PhotoDirectory_FromStg__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."Auct_PhotoDirectory_FromStg__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."Auct_PhotoDirectory_FromStg__dbt_tmp"
    end


   EXEC('create view dbo.Auct_PhotoDirectory_FromStg__dbt_tmp_temp_view as
    
Select
	cast([PhotoDirectoryID] as int) [PhotoDirectoryID],
	cast([UncPath] as nvarchar(4000)) [UncPath],
	cast([TypeName] as nvarchar(4000)) [TypeName],
	cast([Active] as int) [Active],
	cast([DirectoryTypeID] as int) [DirectoryTypeID],
	cast([AuctionID] as int) [AuctionID],
	cast([IsCDN] as int) [IsCDN] 
From stg.[Auct_PhotoDirectory_FinalView]
    ');

  CREATE TABLE "dbo"."Auct_PhotoDirectory_FromStg__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.Auct_PhotoDirectory_FromStg__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."Auct_PhotoDirectory_FromStg__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_PhotoDirectory_FromStg__dbt_tmp_temp_view"
    end


