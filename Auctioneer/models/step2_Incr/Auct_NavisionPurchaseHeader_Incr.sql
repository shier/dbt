{{ config(materialized='incremental',schema='stg')}}
With hashData as (
		Select
			HASHBYTES('SHA2_256', concat(Cast([DocumentType] as varchar), [AuctionDocumentno], [BuyFromVendorno], [PaytoVendorno], [YourReference], Cast([DocumentDate] as varchar), Cast([PostingDate] as varchar), Cast([DueDate] as varchar), [VendorOrderno], [VendorShipmentno], [VendorInvoiceno], [Vendorcrmemono], [Vendorquoteno], Cast([Status] as varchar), [StatusMessage], Cast([PaymentDate] as varchar), Cast([Imported] as varchar), [Jobno], [Lotno], [AuctionID], [Globaldim1Code], [Globaldim2Code], [BusinessUnit], Cast([WrotetoNavision] as varchar), Cast([ExpectedReceiptDate] as varchar))) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_NavisionPurchaseHeader_InterView]
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
