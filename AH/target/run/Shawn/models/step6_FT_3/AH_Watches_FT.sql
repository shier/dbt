
  
  if object_id ('"dbo_dbo"."AH_Watches_FT__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo_dbo"."AH_Watches_FT__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo_dbo"."AH_Watches_FT__dbt_tmp"','U') is not null
    begin
    drop table "dbo_dbo"."AH_Watches_FT__dbt_tmp"
    end


   EXEC('create view dbo_dbo.AH_Watches_FT__dbt_tmp_temp_view as
    
with updateData as (
    select 
		FTstg.[WatchID],
		FTtmp.[Buyer_Skey],
		FTstg.[ListingID],
		FTstg.[LastUpdatedUser],
		FTstg.[CreatedDate],
		FTstg.[UpdatedDate],
		FTstg.[DeletedDate]
    from stg.AH_Watches_FT_tmp as FTtmp 
    join stg.AH_Watches_FT_stg as FTstg 
    on FTstg.WatchID=FTtmp.WatchID
)
,
insertData as (
    select 
        [WatchID],
        [Buyer_Skey],
        [ListingID],
        [LastUpdatedUser],
        [CreatedDate],
        [UpdatedDate],
        [DeletedDate]
    from stg.AH_Watches_FT_tmp
    where WatchID not in (select  WatchID from stg.AH_Watches_FT_stg)
)
SELECT
	[WatchID],
	[Buyer_Skey],
	[ListingID],
	[LastUpdatedUser],
	[CreatedDate],
	[UpdatedDate],
	[DeletedDate]
from updateData

union all

SELECT
	[WatchID],
	[Buyer_Skey],
	[ListingID],
	[LastUpdatedUser],
	[CreatedDate],
	[UpdatedDate],
	[DeletedDate]
from insertData
    ');

  CREATE TABLE "dbo_dbo"."AH_Watches_FT__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo_dbo.AH_Watches_FT__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo_dbo"."AH_Watches_FT__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo_dbo"."AH_Watches_FT__dbt_tmp_temp_view"
    end


