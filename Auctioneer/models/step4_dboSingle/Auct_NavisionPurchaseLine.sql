{{ config(materialized='table',schema='dbo')}}
Select
	cast([DocumentType] as int) [DOCUMENTTYPE],
	cast([AuctionDocumentno] as nvarchar(4000)) [AUCTIONDOCUMENTNO],
	cast([Lneno] as int) [LNENO],
	cast([Type] as int) [TYPE],
	cast([No] as nvarchar(4000)) [NO],
	cast([Description] as nvarchar(4000)) [DESCRIPTION],
	cast([Description2] as nvarchar(4000)) [DESCRIPTION2],
	cast([Quantity] as int) [QUANTITY],
	cast([DirectUnitcostexclTax] as int) [DIRECTUNITCOSTEXCLTAX],
	cast([Status] as int) [STATUS],
	cast([StatusMessage] as nvarchar(4000)) [STATUSMESSAGE],
	cast([Globaldim1Code] as nvarchar(4000)) [GLOBALDIM1CODE],
	cast([Globaldim2Code] as nvarchar(4000)) [GLOBALDIM2CODE],
	cast([ShortCutdim4Code] as nvarchar(4000)) [SHORTCUTDIM4CODE],
	cast([ShortCutdim5Code] as nvarchar(4000)) [SHORTCUTDIM5CODE],
	cast([ShortCutdim8Code] as nvarchar(4000)) [SHORTCUTDIM8CODE],
	cast([ShortCutdim3Code] as nvarchar(4000)) [SHORTCUTDIM3CODE],
	cast([BusinessUnit] as nvarchar(4000)) [BUSINESSUNIT],
	cast([WrotetoNavision] as int) [WROTETONAVISION] 
From stg.[Auct_NavisionPurchaseLine_FinalView]