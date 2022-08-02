
  
  if object_id ('"stg"."Auct_BidderApplication_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_BidderApplication_Inter__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_BidderApplication_Inter__dbt_tmp"','U') is not null
    begin
    drop table "stg"."Auct_BidderApplication_Inter__dbt_tmp"
    end


   EXEC('create view stg.Auct_BidderApplication_Inter__dbt_tmp_temp_view as
    
Select
	[BIDDERAPPLICATIONID] [BidderApplicationID],
	[AUCTIONID] [AuctionID],
	cast([AUCTIONNAME] as nvarchar(4000)) [AuctionName],
	cast([DATERANGE] as nvarchar(4000)) [DateRange],
	[PREREGISTRATIONFEE] [PreRegistrationFee],
	cast([PREREGISTRATIONCUTOFFDATE] as nvarchar(4000)) [PreRegistrationCutoffDate]
From stg.[Auct_BidderApplication_Raw]
    ');

  CREATE TABLE "stg"."Auct_BidderApplication_Inter__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_BidderApplication_Inter__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."Auct_BidderApplication_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_BidderApplication_Inter__dbt_tmp_temp_view"
    end


