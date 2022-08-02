{{ config(materialized='incremental',schema='stg')}}
With hashData as (
		Select
			HASHBYTES('SHA2_256', concat(Cast([DocumentType] as varchar), [AuctionDocumentno], Cast([Lineno] as varchar), Cast([Type] as varchar), [No], [Description], [Description2], Cast([Status] as varchar), [StatusMessage], [GlobalDimension1Code], [GlobalDimension2Code], [ShortCutDimension4Code], [ShortCutDimension8Code], [ShortCutDimension3Code], [BusinessUnit], Cast([WrotetoNavision] as varchar), [ShortCutDimension5Code], Cast([Quantity] as varchar), Cast([UnitPriceexclTax] as varchar), Cast([Unitcost] as varchar))) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_NavisionSalesLine_InterView]
	)
Select * From hashData
{% if is_incremental() %}
	where not exists 
	(
		select hashValue 
		from {{ this }} compareData
		where hashData.hashValue=compareData.hashValue
	)
{% endif %}
