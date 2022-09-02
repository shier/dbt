{{ config(materialized='table',schema='dbo')}}

with updateData as (
    select 
		FTstg.[ShareInfoID],
		FTstg.[CreatedUTC],
		FTstg.[Browser],
		FTstg.[UserID],
		FTtmp.[PotentialBuyer_Skey],
		FTstg.[AppUsed],
		FTstg.[ListingID],
		FTtmp.[Car_Skey],
		FTstg.[UserAgent],
		FTstg.[UserEmail],
		FTstg.[IPAddress],
		FTstg.[Latitude],
		FTstg.[Longitude]
    from stg.CC_ShareInfo_FT_tmp as FTtmp 
    join stg.CC_ShareInfo_FT_stg as FTstg 
    on FTstg.ShareInfoID=FTtmp.ShareInfoID
),
insertData as (
    select 
		[ShareInfoID],
		[CreatedUTC],
		[Browser],
		[UserID],
		[PotentialBuyer_Skey],
		[AppUsed],
		[ListingID],
		[Car_Skey],
		[UserAgent],
		[UserEmail],
		[IPAddress],
		[Latitude],
		[Longitude]
    from stg.CC_ShareInfo_FT_tmp
    where ShareInfoID not in (select  ShareInfoID from stg.CC_ShareInfo_FT_stg)
)
SELECT
	[ShareInfoID],
	[CreatedUTC],
	[Browser],
	[UserID],
	[PotentialBuyer_Skey],
	[AppUsed],
	[ListingID],
	[Car_Skey],
	[UserAgent],
	[UserEmail],
	[IPAddress],
	[Latitude],
	[Longitude]
from updateData

union all

SELECT
	[OrderItemID],
	[OrderID],
	[Seller_Skey],
	[IsActive],
	[ProductID],
	[Product_Skey],
	[Quantity],
	[Price],
	[ItemID],
	[Car_Skey],
	[SalesforceOpportunityID],
	[LastSalesforceActivityDate],
	[StockPrice],
	[AfterDiscountPrice],
	[Created],
	[ModifiedDate]
from insertData