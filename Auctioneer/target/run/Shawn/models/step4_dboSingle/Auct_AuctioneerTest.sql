
  
  if object_id ('"dbo"."Auct_AuctioneerTest__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_AuctioneerTest__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."Auct_AuctioneerTest__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."Auct_AuctioneerTest__dbt_tmp"
    end


   EXEC('create view dbo.Auct_AuctioneerTest__dbt_tmp_temp_view as
    
Select
	cast([AuctioneerTestID] as int) [AUCTIONEERTESTID],
	cast([PostDate] as nvarchar(4000)) [POSTDATE],
	cast([PostUser] as nvarchar(4000)) [POSTUSER],
	cast([Function] as nvarchar(4000)) [FUNCTION],
	cast([Operations] as nvarchar(4000)) [OPERATIONS],
	cast([Observations] as nvarchar(4000)) [OBSERVATIONS],
	cast([Comments] as nvarchar(4000)) [COMMENTS],
	cast([CompletionDate] as nvarchar(4000)) [COMPLETIONDATE] 
From stg.[Auct_AuctioneerTest_FinalView]
    ');

  CREATE TABLE "dbo"."Auct_AuctioneerTest__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.Auct_AuctioneerTest__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."Auct_AuctioneerTest__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_AuctioneerTest__dbt_tmp_temp_view"
    end


