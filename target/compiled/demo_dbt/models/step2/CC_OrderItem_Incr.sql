
With hashData as (
		Select
			HASHBYTES('MD5', concat(Cast(IsActive as varchar), Cast(Price as varchar), Cast(StockPrice as varchar), Cast(AfterDiscountPrice as varchar), ItemInfo, SalesForceOpportunityID, Cast(CreateDate as varchar), Cast(ModifyDate as varchar), Cast(LastSalesForceActivityDate as varchar), Cast(OrderID as varchar), Cast(ProductID as varchar), Cast(Quantity as varchar), Cast(ItemID as varchar))) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[CC_OrderItem_Inter]
	)
Select * From hashData
