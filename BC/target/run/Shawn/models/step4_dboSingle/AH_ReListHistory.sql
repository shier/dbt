
  
  if object_id ('"dbo"."AH_ReListHistory__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."AH_ReListHistory__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."AH_ReListHistory__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."AH_ReListHistory__dbt_tmp"
    end


   EXEC('create view dbo.AH_ReListHistory__dbt_tmp_temp_view as
    
Select
	cast([CurrentPrice_Old] as numeric(19,4)) [CurrentPrice_Old],
	cast([CurrentPrice_New] as numeric(19,4)) [CurrentPrice_New],
	cast([ReservePrice] as numeric(19,4)) [ReservePrice],
	cast([ID] as int) [Id],
	cast([ListingID] as int) [ListingId],
	cast([NewreListiteration] as int) [NewRelistIteration],
	cast([Duration_Old] as int) [Duration_Old],
	cast([Duration_New] as int) [Duration_New],
	cast([HighBidderID] as int) [HighBidderId],
	cast([BidCount] as int) [BidCount],
	cast([Startdttm_New] as datetime) [StartDTTM_New],
	cast([Enddttm_Old] as datetime) [EndDTTM_Old],
	cast([Enddttm_New] as datetime) [EndDTTM_New],
	cast([ReListdttm] as datetime) [RelistDTTM],
	cast([Startdttm_Old] as datetime) [StartDTTM_Old],
	cast([MaxBidAmount] as numeric(19,4)) [MaxBidAmount],
	cast([ProxyBidAmount] as numeric(19,4)) [ProxyBidAmount],
	cast([BidIncrement] as numeric(19,4)) [BidIncrement],
	cast([ListingTitle] as nvarchar(4000)) [ListingTitle] 
From stg.[AH_ReListHistory_FinalView]
    ');

  CREATE TABLE "dbo"."AH_ReListHistory__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.AH_ReListHistory__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."AH_ReListHistory__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."AH_ReListHistory__dbt_tmp_temp_view"
    end


