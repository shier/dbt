{{ config(materialized='table',schema='stg')}}
WITH CC_OrderItem_CTE AS (
    SELECT 
        orderitem.[OrderItemID], 
        orderitem.[OrderID], 
        seller.[Seller_Skey], 
        orderitem.[IsActive], 
        orderitem.[ProductID],
        product.[Product_Skey], 
        orderitem.[Quantity], 
        orderitem.[Price], 
        orderitem.[ItemID], 
        carinfo.[Car_Skey],
        -- [ItemInfo], 
        orderitem.[SalesforceOpportunityID], 
        orderitem.[LastSalesforceActivityDate], 
        orderitem.[StockPrice], 
        orderitem.[AfterDiscountPrice], 
        orderitem.[Created], 
        orderitem.[ModifiedDate]
    FROM [stg].[CC_OrderItem_FT_stg] orderitem
    -- FOR [Seller_Skey]
    LEFT JOIN [stg].[CC_Order_FinalView] orders 
        ON orderitem.[OrderId]=orders.[Id]
    LEFT JOIN [stg].[CC_PaymentNew_FinalView] pymtnew
        ON orders.[PaymentId]=pymtnew.[Id]
    LEFT JOIN [stg].[CC_User_FinalView] users
        ON pymtnew.[UserId]=users.[Id]
    LEFT JOIN [dbo].[CC_Seller_DM] seller 
        ON users.[CompanyId]=seller.[Seller_Skey]
    -- LEFT JOIN [stg].[CC_Company_FinalView] co 
    --     ON users.[CompanyId]=co.[Id] 
    -- FOR [Product_Skey]
    LEFT JOIN [dbo].[CC_Product_DM] product
        ON product.[Product_Skey]=orderitem.[ProductID]
    -- FOR [Car_Skey]
    LEFT JOIN [dbo].[CC_CarInfo_DM] carinfo
        ON orderitem.[ItemID]=carinfo.[Car_Skey]

    -- -- FOR [Customer_Skey]
    -- LEFT JOIN [stg].[CC_Order_FT_stg] orderstg
    --     ON orderitem.[OrderID]=orderstg.[OrderID]
    -- LEFT JOIN [stg].[CC_PaymentNew_FinalView] paymentnew
    --     ON orderstg.[PaymentID]=paymentnew.[ID]
    -- LEFT JOIN [stg].[CC_Customer_Company_Level_Archive] cxarchive
    --     ON paymentnew.[UserID]=cxarchive.[UserID]
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
    -- [ItemInfo], 
	[SalesforceOpportunityID], 
	[LastSalesforceActivityDate], 
	[StockPrice], 
	[AfterDiscountPrice], 
    [Created], 
	[ModifiedDate]
FROM CC_OrderItem_CTE