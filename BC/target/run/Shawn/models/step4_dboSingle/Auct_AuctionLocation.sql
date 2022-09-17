
  
  if object_id ('"dbo"."Auct_AuctionLocation__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_AuctionLocation__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."Auct_AuctionLocation__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."Auct_AuctionLocation__dbt_tmp"
    end


   EXEC('create view dbo.Auct_AuctionLocation__dbt_tmp_temp_view as
    
Select
	cast([AuctionLocationID] as int) [AUCTIONLOCATIONID],
	cast([AuctionID] as int) [AUCTIONID],
	cast([City] as nvarchar(100)) [CITY],
	cast([State] as nvarchar(50)) [STATE],
	cast([County] as nvarchar(100)) [COUNTY],
	cast([Created] as datetime) [CREATED],
	cast([UpdateEventID] as int) [UPDATEEVENTID] 
From stg.[Auct_AuctionLocation_FinalView]
    ');

  CREATE TABLE "dbo"."Auct_AuctionLocation__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.Auct_AuctionLocation__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."Auct_AuctionLocation__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_AuctionLocation__dbt_tmp_temp_view"
    end


