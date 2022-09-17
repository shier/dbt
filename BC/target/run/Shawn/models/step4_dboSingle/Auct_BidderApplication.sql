
  
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
	cast([BidderApplicationID] as int) [BIDDERAPPLICATIONID],
	cast([AuctionID] as int) [AUCTIONID],
	cast([AuctionName] as nvarchar(4000)) [AUCTIONNAME],
	cast([DateRange] as nvarchar(4000)) [DATERANGE],
	cast([PreRegistrationFee] as int) [PREREGISTRATIONFEE],
	cast([PreRegistrationCutoffDate] as nvarchar(4000)) [PREREGISTRATIONCUTOFFDATE] 
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


