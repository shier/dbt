{{ config(materialized='table',schema='stg')}}

SELECT
   HASHBYTES('SHA2_256', 
        CONCAT(
            COALESCE(CAST(auto.[AUTOMOBILIAID] AS VARCHAR(20)), ''), '|', 
            COALESCE(CAST(auto.[ITEMID] AS VARCHAR(20)), '')
        )
    ) AS [Item_Skey],
	auto.[AUTOMOBILIAID],
	auto.[AUTOMOBILIATYPEID],
	auto.[AUTOMOBILIACONDITIONID],
	auto.[ITEMID],
	ISNULL(itemty.[NAME], 'Car') AS [ITEMTYPE],
	NULLIF(item.[DESCR], '') AS [ItemDescription],
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