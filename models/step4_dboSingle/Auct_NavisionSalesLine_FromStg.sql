{{ config(materialized='table',schema='dbo')}}
Select
	cast([DocumentType] as int) [DocumentType],
	cast([AuctionDocumentno] as nvarchar(4000)) [AuctionDocumentno],
	cast([Lineno] as int) [Lineno],
	cast([Type] as int) [Type],
	cast([No] as nvarchar(4000)) [No],
	cast([Description] as nvarchar(4000)) [Description],
	cast([Description2] as nvarchar(4000)) [Description2],
	cast([Status] as int) [Status],
	cast([StatusMessage] as nvarchar(4000)) [StatusMessage],
	cast([GlobalDimension1Code] as nvarchar(4000)) [GlobalDimension1Code],
	cast([GlobalDimension2Code] as nvarchar(4000)) [GlobalDimension2Code],
	cast([ShortCutDimension4Code] as nvarchar(4000)) [ShortCutDimension4Code],
	cast([ShortCutDimension8Code] as nvarchar(4000)) [ShortCutDimension8Code],
	cast([ShortCutDimension3Code] as nvarchar(4000)) [ShortCutDimension3Code],
	cast([BusinessUnit] as nvarchar(4000)) [BusinessUnit],
	cast([WrotetoNavision] as int) [WrotetoNavision],
	cast([ShortCutDimension5Code] as nvarchar(4000)) [ShortCutDimension5Code],
	cast([Quantity] as numeric(19,4)) [Quantity],
	cast([UnitPriceexclTax] as numeric(19,4)) [UnitPriceexclTax],
	cast([Unitcost] as numeric(19,4)) [Unitcost] 
From stg.[Auct_NavisionSalesLine_FinalView]