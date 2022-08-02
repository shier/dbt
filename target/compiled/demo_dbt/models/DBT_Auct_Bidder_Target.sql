

with hashData as (
  select 
    -- HASHBYTES('MD5', concat(cast(ApprovedByUserID as varchar),'|',cast(Comments as varchar))) as hashValue,
    -- CURRENT_TIMESTAMP as effectiveTime,
    * 
    -- OPENROWSET(
    --         BULK 'https://storageaccountdatalakebj.dfs.core.windows.net/silver/AuctHQ/dbo_AA_WEBDATA.parquet',
    --         FORMAT = 'PARQUET'
    --     )
    -- parquet.silver/AuctHQ/dbo_AA_WEBDATA.parquet
    -- From AnalyticsTable_Auct_Auction
  -- From DBT_Auct_Bidder_Source
  From "DedicatedSQLpoolBJ"."parquet"."`abfss://silver@storageaccountdatalakebj.dfs.core.windows.net/AuctHQ/`"
  -- From [https://storageaccountdatalakebj.dfs.core.windows.net/silver/AuctHQ/dbo_AA_WEBDATA.parquet]
)

 select * from hashData
-- 

--     where not exists 
--         (
--             select BidderID 
--             from "DedicatedSQLpoolBJ"."dbo"."DBT_Auct_Bidder_Target" compareData
--             where hashData.BidderID=compareData.BidderID
--         )
--         or 
--         ( exists 
--           (
--             select BidderID, hashValue 
--             from "DedicatedSQLpoolBJ"."dbo"."DBT_Auct_Bidder_Target" compareData 
--             where hashData.BidderID = compareData.BidderID and hashData.hashValue <> compareData.hashValue
--           )
--           and not exists  
--           (
--           select BidderID, hashValue 
--           from "DedicatedSQLpoolBJ"."dbo"."DBT_Auct_Bidder_Target" compareData 
--           where hashData.BidderID = compareData.BidderID and hashData.hashValue = compareData.hashValue
--           )
--         )

-- 