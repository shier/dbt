
  
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
	cast([ID] as int) [ID],
	cast([Amount] as numeric(194)) [Amount],
	cast([LastUpdatedUser] as nvarchar(4000)) [LastUpdatedUser],
	cast([OfferMessage] as nvarchar(4000)) [OfferMessage],
	cast([Status] as nvarchar(4000)) [Status],
	cast([DecLineMessage] as nvarchar(4000)) [DecLineMessage],
	cast([CreatedOn] as datetime) [CreatedOn],
	cast([UpdatedOn] as datetime) [UpdatedOn],
	cast([DeletedOn] as datetime) [DeletedOn],
	cast([Expirationdttm] as datetime) [Expirationdttm],
	cast([SEndingUserID] as int) [SEndingUserID],
	cast([ReceivINgUserID] as int) [ReceivINgUserID],
	cast([BuyerID] as int) [BuyerID],
	cast([Quantity] as int) [Quantity],
	cast([ListingID] as int) [ListingID] 
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


