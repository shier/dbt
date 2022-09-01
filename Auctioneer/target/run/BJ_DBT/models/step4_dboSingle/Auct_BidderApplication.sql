
  
  if object_id ('"dbo"."Auct_BidderApplication__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_BidderApplication__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."Auct_BidderApplication__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."Auct_BidderApplication__dbt_tmp"
    end


   EXEC('create view dbo.Auct_BidderApplication__dbt_tmp_temp_view as
    
Select
	cast([BidderApplicationID] as int) [BidderApplicationID],
	cast([AuctionID] as int) [AuctionID],
	cast([AuctionName] as nvarchar(4000)) [AuctionName],
	cast([DateRange] as nvarchar(4000)) [Daterange],
	cast([PreRegistrationFee] as int) [PreRegistrationFee],
	cast([PreRegistrationCutoffDate] as nvarchar(4000)) [PreRegistrationCutoffDate] 
From stg.[Auct_BidderApplication_FinalView]
    ');

  CREATE TABLE "dbo"."Auct_BidderApplication__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.Auct_BidderApplication__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."Auct_BidderApplication__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_BidderApplication__dbt_tmp_temp_view"
    end


