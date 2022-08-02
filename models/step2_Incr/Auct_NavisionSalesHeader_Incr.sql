{{ config(materialized='incremental',schema='stg')}}
With hashData as (
		Select
			HASHBYTES('SHA2_256', concat(Cast([DocumentType] as varchar), [AuctionDocumentno], [SelltoCustomerno], [BilltoCustomerno], [YourReference], Cast([DocumentDate] as varchar), Cast([PostingDate] as varchar), Cast([ShipmentDate] as varchar), Cast([DueDate] as varchar), Cast([Status] as varchar), [StatusMessage], Cast([PaymentDate] as varchar), Cast([Imported] as varchar), [Jobno], [ExternalDocumentno], [Lotno], [AuctionID], [GlobalDimension1Code], [GlobalDimension2Code], [BusinessUnit], Cast([WrotetoNavision] as varchar))) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_NavisionSalesHeader_InterView]
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
