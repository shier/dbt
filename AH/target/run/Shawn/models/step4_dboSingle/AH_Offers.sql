
  
  if object_id ('"dbo"."AH_Offers__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."AH_Offers__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."AH_Offers__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."AH_Offers__dbt_tmp"
    end


   EXEC('create view dbo.AH_Offers__dbt_tmp_temp_view as
    
Select
	cast([Amount] as numeric(19,4)) [Amount],
	cast([LastUpdatedUser] as nvarchar(4000)) [LastUpdatedUser],
	cast([OfferMessage] as nvarchar(4000)) [OfferMessage],
	cast([Status] as nvarchar(4000)) [Status],
	cast([DecLineMessage] as nvarchar(4000)) [DeclineMessage],
	cast([CreatedOn] as datetime) [CreatedOn],
	cast([UpdatedOn] as datetime) [UpdatedOn],
	cast([DeletedOn] as datetime) [DeletedOn],
	cast([Expirationdttm] as datetime) [ExpirationDTTM],
	cast([ID] as int) [Id],
	cast([SEndingUserID] as int) [SendingUserId],
	cast([ReceivINgUserID] as int) [ReceivingUserId],
	cast([BuyerID] as int) [BuyerId],
	cast([Quantity] as int) [Quantity],
	cast([ListingID] as int) [ListingId] 
From stg.[AH_Offers_FinalView]
    ');

  CREATE TABLE "dbo"."AH_Offers__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.AH_Offers__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."AH_Offers__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."AH_Offers__dbt_tmp_temp_view"
    end


