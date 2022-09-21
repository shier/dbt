
  
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
	cast([BidderAbsenteeID] as int) [BIDDERABSENTEEID],
	cast([Notes] as nvarchar(4000)) [NOTES],
	cast([AuctionBidderID] as int) [AUCTIONBIDDERID],
	cast([ContactInfo] as nvarchar(4000)) [CONTACTINFO],
	cast([OtherContactInfo] as nvarchar(4000)) [OTHERCONTACTINFO],
	cast([MaximumBID] as int) [MAXIMUMBID],
	cast([AuctionID] as int) [AUCTIONID],
	cast([LotNumber] as numeric(18,2)) [LOTNUMBER] 
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


