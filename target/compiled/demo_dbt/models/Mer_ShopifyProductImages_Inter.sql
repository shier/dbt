
Select
	ImageHeight ImageHeight,
	ImageWidth ImageWidth,
	CreatedDate CreatedDate,
	UpdatedDate Updateddate,
	RemovedDate RemovedDate,
	cast(Id as nvarchar(4000)) ID,
	cast(ProductId as nvarchar(4000)) ProductID,
	cast(ImageUrl as nvarchar(4000)) ImageURL,
	cast(Alt as nvarchar(4000)) Alt
From Mer_ShopifyProductImages_Raw