{{ config(materialized='view',schema='stg')}}
Select
	[DocumentType],[AuctionDocumentno],[Lneno],[Type],[No],[Description],[Description2],[Quantity],[DirectUnitcostexclTax],[Status],[StatusMessage],[Globaldim1Code],[Globaldim2Code],[ShortCutdim4Code],[ShortCutdim5Code],[ShortCutdim8Code],[ShortCutdim3Code],[BusinessUnit],[WrotetoNavision] 
From [Auct_NavisionPurchaseLine_Incr]