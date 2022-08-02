{{ config(materialized='view',schema='stg')}}
Select
	[DocumentType],[AuctionDocumentno],[BuyFromVendorno],[PaytoVendorno],[YourReference],[DocumentDate],[PostingDate],[DueDate],[VendorOrderno],[VendorShipmentno],[VendorInvoiceno],[Vendorcrmemono],[Vendorquoteno],[Status],[StatusMessage],[PaymentDate],[Imported],[Jobno],[Lotno],[AuctionID],[Globaldim1Code],[Globaldim2Code],[BusinessUnit],[WrotetoNavision],[ExpectedReceiptDate] 
From [Auct_NavisionPurchaseHeader_Incr]