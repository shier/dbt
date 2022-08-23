
  
  if object_id ('"dbo"."Auct_AuctioneerTest_FromStg__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_AuctioneerTest_FromStg__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."Auct_AuctioneerTest_FromStg__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."Auct_AuctioneerTest_FromStg__dbt_tmp"
    end


   EXEC('create view dbo.Auct_AuctioneerTest_FromStg__dbt_tmp_temp_view as
    
Select
	cast([AuctioneerTestID] as int) [AuctioneerTestID],
	cast([PostDate] as nvarchar(4000)) [PostDate],
	cast([PostUser] as nvarchar(4000)) [PostUser],
	cast([Function] as nvarchar(4000)) [Function],
	cast([Operations] as nvarchar(4000)) [Operations],
	cast([Observations] as nvarchar(4000)) [Observations],
	cast([Comments] as nvarchar(4000)) [Comments],
	cast([CompletionDate] as nvarchar(4000)) [CompletionDate] 
From stg.[Auct_AuctioneerTest_FinalView]
    ');

  CREATE TABLE "dbo"."Auct_AuctioneerTest_FromStg__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.Auct_AuctioneerTest_FromStg__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."Auct_AuctioneerTest_FromStg__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_AuctioneerTest_FromStg__dbt_tmp_temp_view"
    end


