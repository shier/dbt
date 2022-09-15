
  
  if object_id ('"dbo"."Auct_Auctioneer_DM__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_Auctioneer_DM__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."Auct_Auctioneer_DM__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."Auct_Auctioneer_DM__dbt_tmp"
    end


   EXEC('create view dbo.Auct_Auctioneer_DM__dbt_tmp_temp_view as
    
SELECT 
    [AuctioneerID] as [Auctioneer_Skey], 
    [ContactID],  
    [Created], 
    [UpdateEventID], 
    [Active]
FROM [stg].[Auct_Auctioneer_FinalView]
    ');

  CREATE TABLE "dbo"."Auct_Auctioneer_DM__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.Auct_Auctioneer_DM__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."Auct_Auctioneer_DM__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_Auctioneer_DM__dbt_tmp_temp_view"
    end


