
  
  if object_id ('"dbo"."Auct_ProxiBidAuction__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_ProxiBidAuction__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."Auct_ProxiBidAuction__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."Auct_ProxiBidAuction__dbt_tmp"
    end


   EXEC('create view dbo.Auct_ProxiBidAuction__dbt_tmp_temp_view as
    
Select
	cast([ProxiBidAuctionID] as int) [ProxiBidAuctionID],
	cast([ProxiBidID] as int) [ProxiBidID],
	cast([AuctioneerauctionID] as int) [AuctioneerauctionID],
	cast([AuctionCategory] as nvarchar(4000)) [AuctionCategory] 
From stg.[Auct_ProxiBidAuction_FinalView]
    ');

  CREATE TABLE "dbo"."Auct_ProxiBidAuction__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.Auct_ProxiBidAuction__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."Auct_ProxiBidAuction__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_ProxiBidAuction__dbt_tmp_temp_view"
    end


