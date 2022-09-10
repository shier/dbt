{{ config(materialized='table',schema='dbo')}}
with updateData as (
    select 
        FTstg.[ListingActionID],
		FTtmp.[Buyer_Skey],
		FTstg.[ListingID],
		FTstg.[ActionDTTM],
		FTstg.[Description],
		FTstg.[LastUpdatedUser],
		FTstg.[Amount],
		FTstg.[ProxyAmount],
		FTstg.[QTY],
		FTstg.[Reason],
		FTstg.[Status],
		FTstg.[HasUserEntered],
		FTstg.[CreatedDate],
		FTstg.[UpdatedDate],
		FTstg.[DeletedDate]
    from stg.AH_ListingActions_FT_tmp as FTtmp 
    join stg.AH_ListingActions_FT_stg as FTstg 
    on FTstg.ListingActionID=FTtmp.ListingActionID
)
,
insertData as (
    select 
       	[ListingActionID],
        [Buyer_Skey],
        [ListingID],
        [ActionDTTM],
        [Description],
        [LastUpdatedUser],
        [Amount],
        [ProxyAmount],
        [QTY],
        [Reason],
        [Status],
        [HasUserEntered],
        [CreatedDate],
        [UpdatedDate],
        [DeletedDate]
    from stg.AH_ListingActions_FT_tmp
    where ListingActionID not in (select  ListingActionID from stg.AH_ListingActions_FT_stg)
)
SELECT
	[ListingActionID],
	[Buyer_Skey],
	[ListingID],
	[ActionDTTM],
	[Description],
	[LastUpdatedUser],
	[Amount],
	[ProxyAmount],
	[QTY],
	[Reason],
	[Status],
	[HasUserEntered],
	[CreatedDate],
	[UpdatedDate],
	[DeletedDate]
from updateData

union all

SELECT
	[ListingActionID],
	[Buyer_Skey],
	[ListingID],
	[ActionDTTM],
	[Description],
	[LastUpdatedUser],
	[Amount],
	[ProxyAmount],
	[QTY],
	[Reason],
	[Status],
	[HasUserEntered],
	[CreatedDate],
	[UpdatedDate],
	[DeletedDate]
from insertData