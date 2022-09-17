
  
  if object_id ('"dbo"."Auct_DocumentImage__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_DocumentImage__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."Auct_DocumentImage__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."Auct_DocumentImage__dbt_tmp"
    end


   EXEC('create view dbo.Auct_DocumentImage__dbt_tmp_temp_view as
    
Select
	cast([Active] as bit) [ACTIVE],
	cast([DocumentImageID] as int) [DOCUMENTIMAGEID],
	cast([CustomerAccountID] as int) [CUSTOMERACCOUNTID],
	cast([DocumentImageTypeID] as int) [DOCUMENTIMAGETYPEID],
	cast([UncPath] as nvarchar(4000)) [UNCPATH],
	cast([FullPath] as nvarchar(4000)) [FULLPATH],
	cast([AuctionID] as int) [AUCTIONID],
	cast([Expiration] as DATETIME) [EXPIRATION],
	cast([Created] as DATETIME) [CREATED],
	cast([CreatedByUserID] as int) [CREATEDBYUSERID],
	cast([Height] as int) [HEIGHT],
	cast([Width] as int) [WIDTH] 
From stg.[Auct_DocumentImage_FinalView]
    ');

  CREATE TABLE "dbo"."Auct_DocumentImage__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.Auct_DocumentImage__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."Auct_DocumentImage__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_DocumentImage__dbt_tmp_temp_view"
    end


