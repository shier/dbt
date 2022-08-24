{{ config(materialized='view',schema='stg')}}
Select
	[DocumentType],[AuctionDocumentno],[Lineno],[Type],[No],[Description],[Description2],[Status],[StatusMessage],[GlobalDimension1Code],[GlobalDimension2Code],[ShortCutDimension4Code],[ShortCutDimension8Code],[ShortCutDimension3Code],[BusinessUnit],[WrotetoNavision],[ShortCutDimension5Code],[Quantity],[UnitPriceexclTax],[Unitcost] 
From [Auct_NavisionSalesLine_Incr]