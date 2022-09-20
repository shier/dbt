
  
  if object_id ('"stg"."Auct_Automobilia_DM_stg__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_Automobilia_DM_stg__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_Automobilia_DM_stg__dbt_tmp"','U') is not null
    begin
    drop table "stg"."Auct_Automobilia_DM_stg__dbt_tmp"
    end


   EXEC('create view stg.Auct_Automobilia_DM_stg__dbt_tmp_temp_view as
    

SELECT
   HASHBYTES(''SHA2_256'', 
        CONCAT(
            COALESCE(CAST(auto.[AUTOMOBILIAID] AS VARCHAR(20)), ''''), ''|'', 
            COALESCE(CAST(auto.[ITEMID] AS VARCHAR(20)), '''')
        )
    ) AS [Item_Skey],
	auto.[AUTOMOBILIAID],
	auto.[AUTOMOBILIATYPEID],
	auto.[AUTOMOBILIACONDITIONID],
	auto.[ITEMID],
	ISNULL(itemty.[NAME], ''Car'') AS [ITEMTYPE],
	NULLIF(item.[DESCR], '''') AS [ItemDescription],
	-- auto.[DESCRIPTION],
	auto.[CREATED],
	auto.[UPDATEEVENTID],
	auto.[LOTNUMBER],
	auto.[CUSTOMERACCOUNTID],
	auto.[AUCTIONID],
	auto.[COMMENTS]
FROM [stg].[Auct_AUTOMOBILIA_FinalView] auto 
LEFT JOIN [stg].[Auct_Item_FinalView] item 
	ON auto.[ItemID]=item.[ItemID]
LEFT JOIN [stg].[Auct_ItemType_FinalView] itemty 
	ON item.[ItemTypeID]=itemty.[ItemTypeID]
    ');

  CREATE TABLE "stg"."Auct_Automobilia_DM_stg__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_Automobilia_DM_stg__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."Auct_Automobilia_DM_stg__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_Automobilia_DM_stg__dbt_tmp_temp_view"
    end


