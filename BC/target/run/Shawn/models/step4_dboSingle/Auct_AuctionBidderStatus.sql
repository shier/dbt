
  
  if object_id ('"dbo"."Auct_AuctionBidderStatus__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_AuctionBidderStatus__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."Auct_AuctionBidderStatus__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."Auct_AuctionBidderStatus__dbt_tmp"
    end


   EXEC('create view dbo.Auct_AuctionBidderStatus__dbt_tmp_temp_view as
    
Select
	cast([CommissionPercentage] as numeric(18,4)) [COMMISSIONPERCENTAGE],
	cast([AutomobiliaCommissionPercentage] as numeric(18,4)) [AUTOMOBILIACOMMISSIONPERCENTAGE],
	cast([AuctionID] as int) [AUCTIONID],
	cast([BidderStatusID] as int) [BIDDERSTATUSID],
	cast([FeeID] as int) [FEEID],
	cast([RangeStart] as int) [RANGESTART],
	cast([RangeEnd] as int) [RANGEEND] 
From stg.[Auct_AuctionBidderStatus_FinalView]
    ');

  CREATE TABLE "dbo"."Auct_AuctionBidderStatus__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.Auct_AuctionBidderStatus__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."Auct_AuctionBidderStatus__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_AuctionBidderStatus__dbt_tmp_temp_view"
    end


