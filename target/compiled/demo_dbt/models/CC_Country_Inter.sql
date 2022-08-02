
Select
	IsActive IsActive,
	DisplayOrder DisplayOrder,
	Id ID,
	CreateDate CreateDate,
	ModifyDate ModifyDate,
	cast(CountryNameSlug as nvarchar(4000)) CountryNameslug,
	cast(CountryCode as nvarchar(4000)) CountryCode,
	cast(Name as nvarchar(4000)) Name,
	cast(CurrencyCode as nvarchar(4000)) CurrencyCode,
	cast(CurrencyNumCode as nvarchar(4000)) CurrencynumCode
From CC_Country_Raw