
  
  if object_id ('"dbo"."Auct_BidderAbsentee__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_BidderAbsentee__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."Auct_BidderAbsentee__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."Auct_BidderAbsentee__dbt_tmp"
    end


   EXEC('create view dbo.Auct_BidderAbsentee__dbt_tmp_temp_view as
    
Select
	cast([BidderAbsenteeID] as int) [BidderAbsenteeid],
	cast([Notes] as nvarchar(4000)) [Notes],
	cast([AuctionBidderID] as int) [AuctionBidderID],
	cast([ContactInfo] as nvarchar(4000)) [ContactInfo],
	cast([OtherContactInfo] as nvarchar(4000)) [OtherContactInfo],
	cast([MaximumBID] as int) [MaximumBId],
	cast([AuctionID] as int) [AuctionID],
	cast([LotNumber] as numeric(18,2)) [Lotnumber] 
From stg.[Auct_BidderAbsentee_FinalView]
    ');

  CREATE TABLE "dbo"."Auct_BidderAbsentee__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.Auct_BidderAbsentee__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."Auct_BidderAbsentee__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_BidderAbsentee__dbt_tmp_temp_view"
    end


