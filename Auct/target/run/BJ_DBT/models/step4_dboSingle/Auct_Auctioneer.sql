
  
  if object_id ('"dbo"."Auct_Auctioneer__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_Auctioneer__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."Auct_Auctioneer__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."Auct_Auctioneer__dbt_tmp"
    end


   EXEC('create view dbo.Auct_Auctioneer__dbt_tmp_temp_view as
    
Select
	cast([AuctioneerID] as int) [AuctioneerID],
	cast([Active] as bit) [Active],
	cast([ContactID] as int) [ContactID],
	cast([Created] as datetime) [Created],
	cast([UpdateEventID] as int) [UpdateEventID] 
From stg.[Auct_Auctioneer_FinalView]
    ');

  CREATE TABLE "dbo"."Auct_Auctioneer__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.Auct_Auctioneer__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."Auct_Auctioneer__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_Auctioneer__dbt_tmp_temp_view"
    end

