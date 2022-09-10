{{ config(materialized='table',schema='dbo')}}
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