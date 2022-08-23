
  
  if object_id ('"dbo"."Auct_AuctionBidderStatus_FromStg__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_AuctionBidderStatus_FromStg__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."Auct_AuctionBidderStatus_FromStg__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."Auct_AuctionBidderStatus_FromStg__dbt_tmp"
    end


   EXEC('create view dbo.Auct_AuctionBidderStatus_FromStg__dbt_tmp_temp_view as
    
Select
	cast([BidderStatusID] as int) [BidderStatusID],
	cast([CommissionPercentage] as numeric(18,4)) [CommPct],
	cast([AutomobiliaCommissionPercentage] as numeric(18,4)) [AutomobiliaCommPct],
	cast([AuctionID] as int) [AuctionID],
	cast([FeeID] as int) [FeeID],
	cast([RangeStart] as int) [RangeStart],
	cast([RangeEnd] as int) [RangeEnd] 
From stg.[Auct_AuctionBidderStatus_FinalView]
    ');

  CREATE TABLE "dbo"."Auct_AuctionBidderStatus_FromStg__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.Auct_AuctionBidderStatus_FromStg__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."Auct_AuctionBidderStatus_FromStg__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_AuctionBidderStatus_FromStg__dbt_tmp_temp_view"
    end


