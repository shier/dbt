
Select
	cast(CITY as nvarchar(4000)) City,
	cast(STATEPROVINCE as nvarchar(4000)) StateProvince,
	cast(COUNTY as nvarchar(4000)) County,
	ITEMTAXTYPEID ItemTaxTypeID,
	CREATED Created,
	LOOKUPID LookupID,
	TAXRATESID TaxRatesID,
	TAXTYPE TaxType,
	UPDATEEVENTID UpdateEventID,
	TAXLEVELID TaxLevelID
From Auct_TaxLookup_Raw