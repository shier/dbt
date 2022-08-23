
  
  if object_id ('"dbo"."Auct_BidRecord_FromStg__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_BidRecord_FromStg__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."Auct_BidRecord_FromStg__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."Auct_BidRecord_FromStg__dbt_tmp"
    end


   EXEC('create view dbo.Auct_BidRecord_FromStg__dbt_tmp_temp_view as
    
Select
	cast([LotNumber] as numeric(18,2)) [LotNumber],
	cast([AuctionID] as int) [AuctionID],
	cast([EndingBID] as int) [EndingBid],
	cast([ChangeTime] as DATETIME) [ChangeTime] 
From stg.[Auct_BidRecord_FinalView]
    ');

  CREATE TABLE "dbo"."Auct_BidRecord_FromStg__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.Auct_BidRecord_FromStg__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."Auct_BidRecord_FromStg__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_BidRecord_FromStg__dbt_tmp_temp_view"
    end


