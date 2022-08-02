
Select
	Id ID,
	CreatedOn Createdon,
	UpdatedOn Updatedon,
	DeletedOn Deletedon,
	cast(CurrencySymbol as nvarchar(4000)) Currencysymbol,
	cast(CurrencyEnglishName as nvarchar(4000)) CurrencyenglishName,
	cast(CurrencyNativeName as nvarchar(4000)) CurrencynativeName,
	cast(ISOCurrencySymbol as nvarchar(4000)) Isocurrencysymbol
From AH_Customcurrencies_Raw