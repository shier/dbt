
Select
	cast(Id as nvarchar(4000)) ID,
	cast(Title as nvarchar(4000)) Title,
	cast(BodyHtml as nvarchar(4000)) Bodyhtml,
	cast(Options1Values as nvarchar(4000)) Options1Values,
	cast(Options2Name as nvarchar(4000)) Options2Name,
	cast(Options2Values as nvarchar(4000)) Options2Values,
	cast(Options3Name as nvarchar(4000)) Options3Name,
	cast(Options3Values as nvarchar(4000)) Options3Values,
	cast(Vendor as nvarchar(4000)) Vendor,
	cast(ProductType as nvarchar(4000)) ProductType,
	cast(Handle as nvarchar(4000)) Handle,
	cast(Tags as nvarchar(4000)) Tags,
	cast(PublishedScope as nvarchar(4000)) Publishedscope,
	cast(Options1Name as nvarchar(4000)) Options1Name,
	PublishedDate PublishedDate,
	CreatedDate CreatedDate,
	UpdatedDate Updateddate,
	RemovedDate RemovedDate
From Mer_ShopifyProducts_Raw