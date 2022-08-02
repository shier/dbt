
Select
	[DOCUMENTTYPE] [DocumentType],
	[LINENO] [Lineno],
	[TYPE] [Type],
	[STATUS] [Status],
	[WROTETONAVISION] [WrotetoNavision],
	[UNITCOST] [Unitcost],
	[QUANTITY] [Quantity],
	[UNITPRICEEXCLTAX] [UnitPriceexclTax],
	cast([AUCTIONDOCUMENTNO] as nvarchar(4000)) [AuctionDocumentno],
	cast([NO] as nvarchar(4000)) [No],
	cast([DESCRIPTION] as nvarchar(4000)) [Description],
	cast([DESCRIPTION2] as nvarchar(4000)) [Description2],
	cast([STATUSMESSAGE] as nvarchar(4000)) [StatusMessage],
	cast([GLOBALDIMENSION1CODE] as nvarchar(4000)) [GlobalDimension1Code],
	cast([GLOBALDIMENSION2CODE] as nvarchar(4000)) [GlobalDimension2Code],
	cast([SHORTCUTDIMENSION4CODE] as nvarchar(4000)) [ShortCutDimension4Code],
	cast([SHORTCUTDIMENSION8CODE] as nvarchar(4000)) [ShortCutDimension8Code],
	cast([SHORTCUTDIMENSION3CODE] as nvarchar(4000)) [ShortCutDimension3Code],
	cast([BUSINESSUNIT] as nvarchar(4000)) [BusinessUnit],
	cast([SHORTCUTDIMENSION5CODE] as nvarchar(4000)) [ShortCutDimension5Code]
From stg.[Auct_NavisionSalesLine_Raw]