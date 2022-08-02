
Select
	CloverModifiedDate CloverModifiedDate,
	CreatedDate CreatedDate,
	UpdatedDate Updateddate,
	RemovedDate RemovedDate,
	Hidden Hidden,
	DefaultTaxRates DefaultTaxRates,
	IsRevenue IsRevenue,
	Price Price,
	Cost Cost,
	StockCount StockCount,
	cast(PriceType as nvarchar(4000)) PriceType,
	cast(UnitName as nvarchar(4000)) UnitName,
	cast(Id as nvarchar(4000)) ID,
	cast(MerchantId as nvarchar(4000)) MerchantID,
	cast(Name as nvarchar(4000)) Name,
	cast(AlternateName as nvarchar(4000)) AlternateName,
	cast(Code as nvarchar(4000)) Code,
	cast(Sku as nvarchar(4000)) Sku
From Mer_CloverInventory_Raw