
  
  if object_id ('"dbo"."AH_AuctionEventMedias__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."AH_AuctionEventMedias__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."AH_AuctionEventMedias__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."AH_AuctionEventMedias__dbt_tmp"
    end


   EXEC('create view dbo.AH_AuctionEventMedias__dbt_tmp_temp_view as
    
Select
	cast([ID] as int) [ID],
	cast([UpdatedOn] as datetime) [UpdatedOn],
	cast([DeletedOn] as datetime) [DeletedOn],
	cast([CreatedOn] as datetime) [CreatedOn],
	cast([DisplayOrder] as int) [DisplayOrder],
	cast([MediaID] as int) [MediaID],
	cast([EventID] as int) [EventID] 
From stg.[AH_AuctionEventMedias_FinalView]
    ');

  CREATE TABLE "dbo"."AH_AuctionEventMedias__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.AH_AuctionEventMedias__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."AH_AuctionEventMedias__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."AH_AuctionEventMedias__dbt_tmp_temp_view"
    end


