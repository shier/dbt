
  
  if object_id ('"stg"."AH_Increments_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."AH_Increments_Inter__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."AH_Increments_Inter__dbt_tmp"','U') is not null
    begin
    drop table "stg"."AH_Increments_Inter__dbt_tmp"
    end


   EXEC('create view stg.AH_Increments_Inter__dbt_tmp_temp_view as
    
Select
	[Id] [ID],
	cast([LastUpdatedUser] as nvarchar(4000)) [LastUpdatedUser],
	[PriceLevel] [PriceLevel],
	[Amount] [Amount],
	[ListingTypeId] [ListingTypeID],
	[AuctionEventId] [AuctionEventID],
	[CreatedOn] [CreatedOn],
	[UpdatedOn] [UpdatedOn],
	[DeletedOn] [DeletedOn]
From stg.[AH_Increments_Raw]
    ');

  CREATE TABLE "stg"."AH_Increments_Inter__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.AH_Increments_Inter__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."AH_Increments_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."AH_Increments_Inter__dbt_tmp_temp_view"
    end


