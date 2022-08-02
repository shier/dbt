
Select
	cast(AUCTIONDOCUMENTNO as nvarchar(4000)) AuctionDocumentno,
	cast(NO as nvarchar(4000)) No,
	cast(DESCRIPTION as nvarchar(4000)) Description,
	cast(DESCRIPTION2 as nvarchar(4000)) Description2,
	cast(SHORTCUTDIM3CODE as nvarchar(4000)) ShortCutdim3Code,
	cast(BUSINESSUNIT as nvarchar(4000)) BusinessUnit,
	cast(STATUSMESSAGE as nvarchar(4000)) StatusMessage,
	cast(GLOBALDIM1CODE as nvarchar(4000)) Globaldim1Code,
	cast(GLOBALDIM2CODE as nvarchar(4000)) Globaldim2Code,
	cast(SHORTCUTDIM4CODE as nvarchar(4000)) ShortCutdim4Code,
	cast(SHORTCUTDIM5CODE as nvarchar(4000)) ShortCutdim5Code,
	cast(SHORTCUTDIM8CODE as nvarchar(4000)) ShortCutdim8Code,
	DIRECTUNITCOSTEXCLTAX DirectUnitcostexclTax,
	STATUS Status,
	WROTETONAVISION WrotetoNavision,
	DOCUMENTTYPE DocumentType,
	LNENO Lneno,
	TYPE Type,
	QUANTITY Quantity
From Auct_NavisionPurchaseLine_Raw