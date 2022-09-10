
  
  if object_id ('"stg"."AH_Watches_FT_tmp__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."AH_Watches_FT_tmp__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."AH_Watches_FT_tmp__dbt_tmp"','U') is not null
    begin
    drop table "stg"."AH_Watches_FT_tmp__dbt_tmp"
    end


   EXEC('create view stg.AH_Watches_FT_tmp__dbt_tmp_temp_view as
    
SELECT
		w.[WatchID],
		b.[Buyer_Skey],
		w.[UserID],
		w.[ListingID],
		w.[LastUpdatedUser],
		w.[CreatedDate],
		w.[UpdatedDate],
		w.[DeletedDate]
FROM [stg].[AH_Watches_FT_stg] w
left join [dbo].[AH_Buyers_DM] b on w.UserID=b.UserID
    ');

  CREATE TABLE "stg"."AH_Watches_FT_tmp__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.AH_Watches_FT_tmp__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."AH_Watches_FT_tmp__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."AH_Watches_FT_tmp__dbt_tmp_temp_view"
    end


