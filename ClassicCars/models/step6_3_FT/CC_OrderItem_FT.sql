{{ config(materialized='table',schema='dbo')}}

with updateData as (
    select 
		FTstg.[OrderItemID],
		FTstg.[OrderID],
		FTtmp.[Seller_Skey],
		FTstg.[IsActive],
		FTstg.[ProductID],
		FTtmp.[Product_Skey],
		FTstg.[Quantity],
		FTstg.[Price],
		FTstg.[ItemID],
		FTtmp.[Car_Skey],
		FTstg.[SalesforceOpportunityID],
		FTstg.[LastSalesforceActivityDate],
		FTstg.[StockPrice],
		FTstg.[AfterDiscountPrice],
		FTstg.[Created],
		FTstg.[ModifiedDate]
    from stg.CC_OrderItem_FT_tmp as FTtmp 
    join stg.CC_OrderItem_FT_stg as FTstg 
    on FTstg.OrderItemID=FTtmp.OrderItemID
),
insertData as (
    select 
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
    from stg.CC_OrderItem_FT_tmp
    where OrderItemID not in (select  OrderItemID from stg.CC_OrderItem_FT_stg)
)
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