
  
  if object_id ('"dbo"."Auct_AuctionCompany__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_AuctionCompany__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."Auct_AuctionCompany__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."Auct_AuctionCompany__dbt_tmp"
    end


   EXEC('create view dbo.Auct_AuctionCompany__dbt_tmp_temp_view as
    
Select
	cast([AuctionCompanyID] as int) [AUCTIONCOMPANYID],
	cast([CompanyID] as int) [COMPANYID],
	cast([Logo] as nvarchar(4000)) [LOGO],
	cast([Created] as DATETIME) [CREATED],
	cast([UpdateEventID] as int) [UPDATEEVENTID] 
From stg.[Auct_AuctionCompany_FinalView]
    ');

  CREATE TABLE "dbo"."Auct_AuctionCompany__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.Auct_AuctionCompany__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."Auct_AuctionCompany__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_AuctionCompany__dbt_tmp_temp_view"
    end


