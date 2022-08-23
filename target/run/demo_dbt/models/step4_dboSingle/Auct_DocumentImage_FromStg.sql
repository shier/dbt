
  
  if object_id ('"dbo"."Auct_DocumentImage_FromStg__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_DocumentImage_FromStg__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."Auct_DocumentImage_FromStg__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."Auct_DocumentImage_FromStg__dbt_tmp"
    end


   EXEC('create view dbo.Auct_DocumentImage_FromStg__dbt_tmp_temp_view as
    
Select
	cast([DocumentImageID] as int) [DocumentImageID],
	cast([Active] as bit) [Active],
	cast([CustomerAccountID] as int) [CustomerAccountID],
	cast([DocumentImageTypeID] as int) [DocumentImageTypeID],
	cast([UncPath] as nvarchar(4000)) [UncPath],
	cast([FullPath] as nvarchar(4000)) [FullPath],
	cast([AuctionID] as int) [AuctionID],
	cast([Expiration] as DATETIME) [Expiration],
	cast([Created] as DATETIME) [Created],
	cast([CreatedByUserID] as int) [CreatedByUserID],
	cast([Height] as int) [Height],
	cast([Width] as int) [Width] 
From stg.[Auct_DocumentImage_FinalView]
    ');

  CREATE TABLE "dbo"."Auct_DocumentImage_FromStg__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.Auct_DocumentImage_FromStg__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."Auct_DocumentImage_FromStg__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_DocumentImage_FromStg__dbt_tmp_temp_view"
    end


