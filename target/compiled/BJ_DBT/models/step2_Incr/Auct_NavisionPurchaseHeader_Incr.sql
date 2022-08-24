
With hashData as (
		Select
			HASHBYTES('SHA2_256', concat(Cast([DocumentType] as varchar), [AuctionDocumentno], [BuyFromVendorno], [PaytoVendorno], [YourReference], Cast([DocumentDate] as varchar), Cast([PostingDate] as varchar), Cast([DueDate] as varchar), [VendorOrderno], [VendorShipmentno], [VendorInvoiceno], [Vendorcrmemono], [Vendorquoteno], Cast([Status] as varchar), [StatusMessage], Cast([PaymentDate] as varchar), Cast([Imported] as varchar), [Jobno], [Lotno], [AuctionID], [Globaldim1Code], [Globaldim2Code], [BusinessUnit], Cast([WrotetoNavision] as varchar), Cast([ExpectedReceiptDate] as varchar))) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_NavisionPurchaseHeader_InterView]
	)
Select * From hashData

	where not exists 
	(
		select hashValue 
		from "BJAC_DW_PROD"."stg"."Auct_NavisionPurchaseHeader_Incr" compareData
		where hashData.hashValue=compareData.hashValue
	)
