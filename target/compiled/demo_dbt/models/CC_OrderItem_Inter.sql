
Select
	IsActive IsActive,
	Price Price,
	StockPrice StockPrice,
	AfterDiscountPrice AfterDisCountPrice,
	cast(ItemInfo as nvarchar(4000)) ItemInfo,
	cast(SalesforceOpportunityId as nvarchar(4000)) SalesForceOpportunityID,
	CreateDate CreateDate,
	ModifyDate ModifyDate,
	LastSalesforceActivityDate LastSalesForceActivityDate,
	Id ID,
	OrderId OrderID,
	ProductId ProductID,
	Quantity Quantity,
	ItemId ItemID
From CC_OrderItem_Raw