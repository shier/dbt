
  
  if object_id ('"dbo_stg"."AH_ListingActions_FT_tmp__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo_stg"."AH_ListingActions_FT_tmp__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo_stg"."AH_ListingActions_FT_tmp__dbt_tmp"','U') is not null
    begin
    drop table "dbo_stg"."AH_ListingActions_FT_tmp__dbt_tmp"
    end


   EXEC('create view dbo_stg.AH_ListingActions_FT_tmp__dbt_tmp_temp_view as
    
SELECT
		la.[ListingActionID],
		b.[Buyer_Skey],
		la.[UserID],
		la.[ListingID],
		la.[ActionDTTM],
		la.[Description],
		la.[LastUpdatedUser],
		la.[Amount],
		la.[ProxyAmount],
		la.[QTY],
		la.[Reason],
		la.[Status],
		la.[HasUserEntered],
		la.[CreatedDate],
		la.[UpdatedDate],
		la.[DeletedDate]
FROM	[stg].[AH_ListingActions_FT_stg] la
left join [dbo].[AH_Buyers_DM] b on la.UserID=b.UserID
    ');

  CREATE TABLE "dbo_stg"."AH_ListingActions_FT_tmp__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo_stg.AH_ListingActions_FT_tmp__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo_stg"."AH_ListingActions_FT_tmp__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo_stg"."AH_ListingActions_FT_tmp__dbt_tmp_temp_view"
    end


