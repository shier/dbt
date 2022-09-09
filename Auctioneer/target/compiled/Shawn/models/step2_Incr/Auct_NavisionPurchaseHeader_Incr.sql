
With hashData as (
		Select
			*, HASHBYTES('SHA2_256', concat(Cast([DocumentType] as varchar), [AuctionDocumentno], [BuyFromVendorno], [PaytoVendorno], [YourReference], Cast([DocumentDate] as varchar), Cast([PostingDate] as varchar), Cast([DueDate] as varchar), [VendorOrderno], [VendorShipmentno], [VendorInvoiceno], [Vendorcrmemono], [Vendorquoteno], Cast([Status] as varchar), [StatusMessage], Cast([PaymentDate] as varchar), Cast([Imported] as varchar), [Jobno], [Lotno], [AuctionID], [Globaldim1Code], [Globaldim2Code], [BusinessUnit], Cast([WrotetoNavision] as varchar), Cast([ExpectedReceiptDate] as varchar))) as dbt_scd_id,
			CURRENT_TIMESTAMP as dbt_updated_at, 
			CURRENT_TIMESTAMP as dbt_valid_from, 
			NULL as dbt_valid_to
		From stg.[Auct_NavisionPurchaseHeader_InterView]
	)
Select * From hashData

	where not exists 
	(
		select dbt_scd_id 
		from "BJAC_DW_PROD"."stg"."Auct_NavisionPurchaseHeader_Incr" compareData
		where hashData.dbt_scd_id=compareData.dbt_scd_id
	)
