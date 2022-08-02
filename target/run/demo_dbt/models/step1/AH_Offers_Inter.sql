
  
  if object_id ('"stg"."AH_Offers_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."AH_Offers_Inter__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."AH_Offers_Inter__dbt_tmp"','U') is not null
    begin
    drop table "stg"."AH_Offers_Inter__dbt_tmp"
    end


   EXEC('create view stg.AH_Offers_Inter__dbt_tmp_temp_view as
    
Select
	[Id] [ID],
	[Amount] [Amount],
	cast([LastUpdatedUser] as nvarchar(4000)) [LastUpdatedUser],
	cast([OfferMessage] as nvarchar(4000)) [OfferMessage],
	cast([Status] as nvarchar(4000)) [Status],
	cast([DeclineMessage] as nvarchar(4000)) [DecLineMessage],
	[CreatedOn] [CreatedOn],
	[UpdatedOn] [UpdatedOn],
	[DeletedOn] [DeletedOn],
	[ExpirationDTTM] [Expirationdttm],
	[SendingUserId] [SEndingUserID],
	[ReceivingUserId] [ReceivINgUserID],
	[BuyerId] [BuyerID],
	[Quantity] [Quantity],
	[ListingId] [ListingID]
From stg.[AH_Offers_Raw]
    ');

  CREATE TABLE "stg"."AH_Offers_Inter__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.AH_Offers_Inter__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."AH_Offers_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."AH_Offers_Inter__dbt_tmp_temp_view"
    end


