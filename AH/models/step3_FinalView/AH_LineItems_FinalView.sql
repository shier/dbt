{{ config(materialized='view',schema='stg')}}
Select
	[ID],[Currency],[Status],[Type],[LotNumber],[Description],[LastUpdatedUser],[CreatedOn],[UpdatedOn],[DeletedOn],[DaTestamp],[InvoiceID],[ListingID],[Quantity],[OwnerID],[PayerID],[ReListiteration],[AuctionEventID],[TotalAmount],[PeRunitAmount],[Taxable],[IsArchived],[BuyersPremiuMapplies],[IsPayerArchived] 
From stg.[AH_LineItems_Incr] 
Where [dbt_valid_to] is null