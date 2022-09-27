
  
  if object_id ('"dbo"."AH_Increments__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."AH_Increments__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."AH_Increments__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."AH_Increments__dbt_tmp"
    end


   EXEC('create view dbo.AH_Increments__dbt_tmp_temp_view as
    
Select
	cast([LastUpdatedUser] as nvarchar(4000)) [LastUpdatedUser],
	cast([PriceLevel] as numeric(19,4)) [PriceLevel],
	cast([Amount] as numeric(19,4)) [Amount],
	cast([ID] as int) [Id],
	cast([ListingTypeID] as int) [ListingTypeId],
	cast([AuctionEventID] as int) [AuctionEventId],
	cast([CreatedOn] as datetime) [CreatedOn],
	cast([UpdatedOn] as datetime) [UpdatedOn],
	cast([DeletedOn] as datetime) [DeletedOn] 
From stg.[AH_Increments_FinalView]
    ');

  CREATE TABLE "dbo"."AH_Increments__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.AH_Increments__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."AH_Increments__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."AH_Increments__dbt_tmp_temp_view"
    end


