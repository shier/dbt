
  
  if object_id ('"stg"."Auct_AuctionDeferedRevenue_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_AuctionDeferedRevenue_Inter__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_AuctionDeferedRevenue_Inter__dbt_tmp"','U') is not null
    begin
    drop table "stg"."Auct_AuctionDeferedRevenue_Inter__dbt_tmp"
    end


   EXEC('create view stg.Auct_AuctionDeferedRevenue_Inter__dbt_tmp_temp_view as
    
Select
	[DEFEREDAUCTIONID] [DeferedAuctionID],
	[DEFEREDPERCENTAGE] [DeferedPercentage],
	[PARENTAUCTIONID] [ParentAuctionID],
	[GLACCOUNTNUMBER] [GlAccountNumber]
From stg.[Auct_AuctionDeferedRevenue_Raw]
    ');

  CREATE TABLE "stg"."Auct_AuctionDeferedRevenue_Inter__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_AuctionDeferedRevenue_Inter__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."Auct_AuctionDeferedRevenue_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_AuctionDeferedRevenue_Inter__dbt_tmp_temp_view"
    end


