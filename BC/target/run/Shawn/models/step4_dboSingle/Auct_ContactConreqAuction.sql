
  
  if object_id ('"dbo"."Auct_ContactConreqAuction__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_ContactConreqAuction__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."Auct_ContactConreqAuction__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."Auct_ContactConreqAuction__dbt_tmp"
    end


   EXEC('create view dbo.Auct_ContactConreqAuction__dbt_tmp_temp_view as
    
Select
	cast([ContactID] as int) [CONTACTID],
	cast([AuctionID] as int) [AUCTIONID],
	cast([Count] as int) [COUNT] 
From stg.[Auct_ContactConreqAuction_FinalView]
    ');

  CREATE TABLE "dbo"."Auct_ContactConreqAuction__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.Auct_ContactConreqAuction__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."Auct_ContactConreqAuction__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_ContactConreqAuction__dbt_tmp_temp_view"
    end


