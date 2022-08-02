{{ config(materialized='view',schema='stg')}}
Select
	[DocumentType],[AuctionDocumentno],[SelltoCustomerno],[BilltoCustomerno],[YourReference],[DocumentDate],[PostingDate],[ShipmentDate],[DueDate],[Status],[StatusMessage],[PaymentDate],[Imported],[Jobno],[ExternalDocumentno],[Lotno],[AuctionID],[GlobalDimension1Code],[GlobalDimension2Code],[BusinessUnit],[WrotetoNavision] 
From [Auct_NavisionSalesHeader_Incr]